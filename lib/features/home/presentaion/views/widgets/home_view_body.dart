import 'package:book_app/core/utlis/styles.dart';
import 'package:book_app/features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:book_app/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:book_app/features/home/presentaion/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 33),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
