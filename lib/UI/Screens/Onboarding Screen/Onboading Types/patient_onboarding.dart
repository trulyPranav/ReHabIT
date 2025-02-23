import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Controllers/onboarding_controller.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Widgets/next_onboard.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Widgets/page_nav.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Widgets/page_view_main.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Widgets/skip_onboard.dart';

class PatientOnboarding extends StatefulWidget {
  final String name;
  const PatientOnboarding({super.key, required this.name});

  @override
  State<PatientOnboarding> createState() => _PatientOnboardingState();
}

class _PatientOnboardingState extends State<PatientOnboarding> {
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
                title: "Your path to\nrecovery.",
                subText: "Personalised rehabilitation - from\nthe comfort of your home.",
              ),
              PageViewMain(
                loc: "assets/onBoardingAsset.png",
                title: "Your path to\nrecovery.",
                subText: "Personalised rehabilitation - from\nthe comfort of your home.",
              ),
              PageViewMain(
                loc: "assets/onBoardingAsset.png",
                title: "Your path to\nrecovery.",
                subText: "Personalised rehabilitation - from\nthe comfort of your home.",
              )
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