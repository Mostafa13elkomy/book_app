import 'package:flutter/material.dart';

class SlidingMethod extends StatelessWidget {
  const SlidingMethod({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read More Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
