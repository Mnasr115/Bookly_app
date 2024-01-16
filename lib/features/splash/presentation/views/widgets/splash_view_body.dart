import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late AnimationController imageAnimationController;
  late Animation<Offset> imageSlidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    navigateToHome();
  }

// important to dispose animation
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    imageAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          builder: (context, _) {
            return SlideTransition(
              position: imageSlidingAnimation,
              child: Image.asset(
                AssetsData.logo,
              ),
            );
          },
          animation: imageSlidingAnimation,
        ),
        const SizedBox(
          height: 20,
        ),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  'Read Free Books',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: 'Pacifico',
                  ),
                ),
              );
            }),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    animationController.forward();

    imageAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    imageSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, -10), end: Offset.zero)
            .animate(imageAnimationController);
    imageAnimationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        /* Get.to(
          () => const HomeView(),
      transition: Transition.fadeIn,
      duration: kTransitionDuration,
    );*/

        GoRouter.of(context).push(AppRouters.kHomeView);
      },
    );
  }
}
