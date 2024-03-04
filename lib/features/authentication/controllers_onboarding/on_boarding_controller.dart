import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> selectedPageIndex = 0.obs;

  void updatePageIndicator(index) {
    selectedPageIndex.value = index ;
  }

  void dotNavigationClick(index) {
    selectedPageIndex.value = index ;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (selectedPageIndex.value < 2) {
      dotNavigationClick(selectedPageIndex.value + 1);
    } else {
      log("Last Page");
    }
  }

  void skipPage() {
    dotNavigationClick(2);
  }
}
