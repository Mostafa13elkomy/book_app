part of 'featured_books_cubit_cubit.dart';

@immutable
sealed class FeaturedBooksCubitState {}

class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}

class FeaturedBooksLoading extends FeaturedBooksCubitState {}

class FeaturedBooksSuccess extends FeaturedBooksCubitState {
  List<BookModel> books;
  FeaturedBooksSuccess({
    required this.books,
  });
}

class FeaturedBooksFailure extends FeaturedBooksCubitState {
  final String errMessage;
  FeaturedBooksFailure({
    required this.errMessage,
  });

}
