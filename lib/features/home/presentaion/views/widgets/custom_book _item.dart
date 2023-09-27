import 'package:book_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(22),
              image:const DecorationImage(
            image: AssetImage(AssetData.testImage),
          )),
        ),
      ),
    );
  }
}
