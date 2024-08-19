import 'package:suqum_app/utils/constants/image_strings.dart';
import 'package:suqum_app/utils/constants/sizes.dart';
import 'package:suqum_app/utils/constants/text_strings.dart';
import 'package:suqum_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo
        Image(
          height: 150,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        // Title
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),

        // SubTitle
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
