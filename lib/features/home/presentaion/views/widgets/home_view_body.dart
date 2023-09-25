import 'package:book_app/core/utlis/assets.dart';
import 'package:book_app/core/utlis/styles.dart';
import 'package:book_app/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:book_app/features/home/presentaion/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(left: 28, top: 33),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
        BestSellerListView()
      ],
    );
  }
}
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
  height: 125,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(12),
              image:const DecorationImage(
            image: AssetImage(AssetData.testImage),
          )),
        ),
      ),
    )
      ],


    );
  }
}