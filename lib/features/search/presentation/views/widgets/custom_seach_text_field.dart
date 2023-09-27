import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            enabledBorder: buildOutLinInputBorder(),
            focusedBorder: buildOutLinInputBorder(),
            hintText: 'search',
            suffixIcon: Opacity(
              opacity: .8,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 22,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildOutLinInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 205, 205, 205)));
  }
}
