import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubit() : super(FeaturedBooksCubitInitial());
}
