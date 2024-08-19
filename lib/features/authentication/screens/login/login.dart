import 'package:suqum_app/common/styles/spacing_styles.dart';
import 'package:suqum_app/common/widgets/login_signup/form_divider.dart';
import 'package:suqum_app/common/widgets/login_signup/social_buttons.dart';
import 'package:suqum_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:suqum_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:suqum_app/utils/constants/sizes.dart';
import 'package:suqum_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(LoginController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //   Header (logo, title, subtitle)
              const LoginHeader(),

              //   Login Form
              const LoginForm(),

              //   Divider
              FormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //   Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
