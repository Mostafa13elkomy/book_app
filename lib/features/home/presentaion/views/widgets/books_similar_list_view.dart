import 'package:book_app/features/home/presentaion/views/widgets/custom_book%20_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .19,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 12),
            child: CustomBookImage(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2015/09/30/01/48/turkey-964831_1280.jpg',
            ),
          );
        },
      ),
    );
  }
}
