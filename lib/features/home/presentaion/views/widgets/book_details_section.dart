import 'package:book_app/core/utlis/styles.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/presentaion/views/widgets/books_action.dart';
import 'package:book_app/features/home/presentaion/views/widgets/custom_book%20_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .18),
          child: SizedBox(
              height: 265,
              child: CustomBookImage(
                imageUrl:
                bookModel.volumeInfo.imageLinks?.thumbnail ?? ''
                ),),
        ),
        const SizedBox(
          height: 30,
        ),
          Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .9,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
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
        BooksAction(
          bookModel: bookModel,
        ),
        const SizedBox(
          height: 33,
        ),
      ],
    );
  }
}
