import 'package:book_app/core/errors/custom_error_widget.dart';
import 'package:book_app/core/widgets/custom_loading_indicator.dart';
import 'package:book_app/features/home/presentaion/manger/newest_books/newest_books_cubit.dart';
import 'package:book_app/features/home/presentaion/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const  EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(bookModel: state.books[index],),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
        return const CustomLoadingIndicator();
        }
      },
    );
  }
}
