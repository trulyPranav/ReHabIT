import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Controllers/onboarding_controller.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Widgets/next_onboard.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Widgets/page_nav.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Widgets/page_view_main.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Widgets/skip_onboard.dart';

class PhysiotherapistOnboarding extends StatefulWidget {
  final String name;
  const PhysiotherapistOnboarding({super.key, required this.name});

  @override
  State<PhysiotherapistOnboarding> createState() => _PhysiotherapistOnboardingState();
}

class _PhysiotherapistOnboardingState extends State<PhysiotherapistOnboarding> {
  final controller  = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePage,
            children: [
              PageViewMain(
                loc: "assets/onBoardingAsset.png",
                title: "Effortless Patient\nManagement.",
                subText: "Anytime, anywhere.",
              ),
              PageViewMain(
                loc: "assets/onBoardingAsset.png",
                title: "Effortless Patient\nManagement.",
                subText: "Anytime, anywhere.",
              ),
              PageViewMain(
                loc: "assets/onBoardingAsset.png",
                title: "Effortless Patient\nManagement.",
                subText: "Anytime, anywhere.",
              ),
            ],
          ),
          PageNav(),
          SkipOnboard(),
          NextOnboard()
        ],
      ),
    );
  }
}