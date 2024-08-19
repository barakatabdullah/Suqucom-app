import 'package:suqum_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:suqum_app/utils/constants/colors.dart';
import 'package:suqum_app/utils/constants/text_strings.dart';
import 'package:suqum_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: TColors.white,),),),
      // home: const OnBoardingScreen(),
    );
  }
}
