import 'package:book_app/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_app/features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .22),
          child:const CustomBookImage(),
        )
      ],
    );
  }
}
