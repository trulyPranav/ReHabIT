import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {

  static OnBoardingController get instance => Get.find();

  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;

  void updatePage(index) => currentPageIndex.value = index;

  void dotNavigation(index){
    currentPageIndex.value = index;
    pageController.animateToPage(
      index,
      duration:
          const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void nextPage(BuildContext context) async {
    if (currentPageIndex.value == 2) {
      Navigator.pop(context);
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration:
            const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration:
          const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}