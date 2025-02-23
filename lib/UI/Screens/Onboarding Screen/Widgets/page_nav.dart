import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageNav extends StatelessWidget {
  const PageNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: getBottomBarHeight() + 70,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigation,
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: Color(0xFF1E1E1E),
              dotHeight: 6,
              dotWidth: 7
            ),
        ),
      ),
    );
  }
}