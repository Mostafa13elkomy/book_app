import 'package:book_app/core/utlis/styles.dart';
import 'package:book_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentaion/views/widgets/books_action.dart';
import 'package:book_app/features/home/presentaion/views/widgets/custom_book%20_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .18),
          child: const SizedBox(height: 265, child: CustomBookImage(imageUrl: 'https://cdn.pixabay.com/photo/2015/09/30/01/48/turkey-964831_1280.jpg',)),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .9,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        // const BookRating(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
        const SizedBox(
          height: 33,
        ),
      ],
    );
  }
}
