import 'package:book_app/features/search/presentation/views/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onSubmitted: (data) {
            BlocProvider.of<SearchCubit>(context)
                .fetchSearedBooks(bookName: data);
          },
          decoration: InputDecoration(
            enabledBorder: buildOutLinInputBorder(),
            focusedBorder: buildOutLinInputBorder(),
            hintText: 'search',
            suffixIcon: Opacity(
              opacity: .8,
              child: IconButton(
                onPressed: () {
                  if (SearchCubit.get(context)
                      .searchController
                      .text
                      .isNotEmpty) {
                    SearchCubit.get(context).fetchSearedBooks(
                        bookName:
                            SearchCubit.get(context).searchController.text);
                  }
                },
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
        borderSide:
            const BorderSide(color: Color.fromARGB(255, 205, 205, 205)));
  }
}
