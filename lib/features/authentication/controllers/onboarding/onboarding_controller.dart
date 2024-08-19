import 'package:get_storage/get_storage.dart';
import 'package:suqum_app/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // jump to the specific dot selected page
  void doNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // update current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final deviceStorage = GetStorage();
      deviceStorage.write('isFirstTime', false);
      Get.offAll(const LoginScreen());
    } else {
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  // update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(currentPageIndex.value);
  }
}
