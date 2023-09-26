import 'package:book_app/core/utlis/assets.dart';
import 'package:book_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(AssetData.testImage),
                  )),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
            height: 3,),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: const Text(
                'hdfhyu jjidjfi kmjij iji iyuimk grfgf',
                style: Styles.textStyle20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'icf fvfjb',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '19.99 €',
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
