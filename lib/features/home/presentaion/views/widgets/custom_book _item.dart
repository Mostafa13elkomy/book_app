import 'package:flutter/material.dart';
import 'package:book_app/core/utlis/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
              )),
        ),
      ),
    );
  }
}
