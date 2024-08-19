import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:suqum_app/features/authentication/screens/login/login.dart';
import 'package:suqum_app/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(const LoginScreen()) : Get.offAll(const OnBoardingScreen());
  }


  /* ----------------------------- Email and Password Sign-in ----------------------------- */
  /// [EmailAuthentication] - SignIn

  /// [EmailAuthentication] - Register

  /// [ReAuthentication] - ReAuthentication User

  /// [EmailVerification] - Mail Verification

  /// [EmailAuthentication] - Forget Password

  /* ----------------------------- Social Sign-in ----------------------------- */
  /// [GoogleAuthentication] - GOOGLE

  /// [FacebookAuthentication] - FACEBOOK

  /* ----------------------------- Logout ----------------------------- */
  /// [LogoutUser] - Valid for any authentication

  /// [DeleteUser] - Remove User Auth and Firestore Account
}