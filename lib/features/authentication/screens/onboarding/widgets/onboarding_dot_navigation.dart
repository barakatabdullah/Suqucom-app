import 'package:suqum_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:suqum_app/utils/constants/colors.dart';
import 'package:suqum_app/utils/constants/sizes.dart';
import 'package:suqum_app/utils/device/device_utility.dart';
import 'package:suqum_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.doNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
      ),
    );
  }
}