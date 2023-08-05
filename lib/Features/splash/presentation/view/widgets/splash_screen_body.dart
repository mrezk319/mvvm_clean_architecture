import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_clean_arch/Features/splash/presentation/view/widgets/sliding_text.dart';

import '../../../../../Core/utils/app_routes.dart';
import '../../../../../Core/utils/assets.dart';
import '../../../../home/presentation/view/home_screen.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeScreen();
  }

  void navigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(const HomeScreen(),
      //     transition: Transition.fade, duration: const Duration(seconds: 1));
      GoRouter.of(context).push(AppRoutes.homeRoute);
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        AnimatedText(animation: animation),
      ],
    );
  }
}
