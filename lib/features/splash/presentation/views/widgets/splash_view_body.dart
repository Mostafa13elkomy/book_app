import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:book_app/core/utlis/app_router.dart';
import 'package:book_app/core/utlis/assets.dart';
import 'package:book_app/features/splash/presentation/views/widgets/slidingtext.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void didUpdateWidget(covariant SplashViewBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingMethod(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTranstionAnimation);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
