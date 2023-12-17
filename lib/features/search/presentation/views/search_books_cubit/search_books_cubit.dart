import 'package:bloc/bloc.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/search/data/repos/search_books_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_books_state.dart';

class SearchCubit extends Cubit<SearchBooksState> {
  SearchCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  static SearchCubit get(BuildContext context) => BlocProvider.of(context);

  Future<void> fetchSearedBooks({required String bookName}) async {
    // emit(SearchBooksLoading());
    Either<Failure, List<BookModel>> result;
    result = await searchRepo.fetchSearchBooks(bookName: bookName);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (books) {
      emit(SearchSuccessState(books));
    });
  }

  TextEditingController searchController = TextEditingController();
}