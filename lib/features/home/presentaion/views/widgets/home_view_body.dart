import 'package:book_app/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:book_app/features/home/presentaion/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), FeaturedBooksListView()],
    );
  }
}

