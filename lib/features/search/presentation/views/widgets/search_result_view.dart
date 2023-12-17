import 'package:book_app/core/errors/custom_error_widget.dart';
import 'package:book_app/core/utlis/app_router.dart';
import 'package:book_app/core/widgets/custom_loading_indicator.dart';
import 'package:book_app/features/home/presentaion/views/widgets/book_list_view_item.dart';
import 'package:book_app/features/search/presentation/views/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchBooksState>(
        builder: (context, state) {
      if (state is SearchSuccessState) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          itemCount: state.books.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              GoRouter.of(context)
                  .pushNamed(AppRouter.kBookDetails, extra: state.books[index]);
            },
            child: BookListViewItem(
              bookModel: state.books[index],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 15.0),
        );
      } else if (state is SearchBooksFailure) {
        return const Text('Not Found');
      } else if (state is SearchBooksLoading) {
        return const CustomLoadingIndicator();
      }
      return Container();
    });
  }
}
