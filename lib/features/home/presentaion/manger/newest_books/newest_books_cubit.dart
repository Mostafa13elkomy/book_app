import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());
}
