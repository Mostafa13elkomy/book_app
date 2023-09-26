
import 'package:book_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      const  Icon(FontAwesomeIcons.solidStar,
        color: Color.fromARGB(255, 244, 255, 33),
      ),
      const SizedBox(
        width: 6.3,
      ),
      Text('4.8',
      style:Styles.textStyle16.copyWith(fontWeight: FontWeight.w900) ,),
        const SizedBox(
        width: 5,
      ),
        Text('(224)',
      style: Styles.textStyle14.copyWith(color:const Color.fromARGB(255, 163, 173, 167))
      
      )
      ],
    );
  }
}
