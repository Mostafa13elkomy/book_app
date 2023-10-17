import 'package:book_app/core/utlis/styles.dart';
import 'package:book_app/features/home/presentaion/views/widgets/books_similar_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'You can also like',
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        const SimilarBooksListView(),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
