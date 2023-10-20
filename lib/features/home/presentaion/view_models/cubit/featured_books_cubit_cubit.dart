import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubit(
    this.homeRepo,
  ) : super(
          FeaturedBooksCubitInitial(),
        );

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(
      FeaturedBooksLoading(),
    );
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(
        FeaturedBooksFailure(errMessage: failure.errMessage),
      );
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
