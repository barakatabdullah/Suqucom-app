import 'package:suqum_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:suqum_app/utils/constants/sizes.dart';
import 'package:suqum_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}