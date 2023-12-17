part of 'search_books_cubit.dart';

@immutable
sealed class SearchBooksState {}

final class SearchBooksInitial extends SearchBooksState {}

final class SearchBooksLoading extends SearchBooksState {}

class SearchSuccessState extends SearchBooksState{
  final List<BookModel> books;

    SearchSuccessState(this.books);
}

final class SearchBooksFailure extends SearchBooksState {
  final String errMessage;

  SearchBooksFailure(this.errMessage);
}
class SearchBooksErrorPagination extends SearchBooksState {
  final String error;
  SearchBooksErrorPagination(this.error);
}