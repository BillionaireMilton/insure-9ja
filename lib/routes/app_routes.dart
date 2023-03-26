import 'package:flutter/material.dart';
import 'package:insure_9ja/presentation/splash_screen/splash_screen.dart';
import 'package:insure_9ja/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:insure_9ja/presentation/onboarding1_screen/onboarding1_screen.dart';
import 'package:insure_9ja/presentation/onboarding2_screen/onboarding2_screen.dart';
import 'package:insure_9ja/presentation/onboarding3_screen/onboarding3_screen.dart';
import 'package:insure_9ja/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:insure_9ja/presentation/verification_screen/verification_screen.dart';
import 'package:insure_9ja/presentation/verification_active_screen/verification_active_screen.dart';
import 'package:insure_9ja/presentation/verification_onetime_animation_screen/verification_onetime_animation_screen.dart';
import 'package:insure_9ja/presentation/verification_animation_screen/verification_animation_screen.dart';
import 'package:insure_9ja/presentation/complete_signup_screen/complete_signup_screen.dart';
import 'package:insure_9ja/presentation/complete_signup_active_screen/complete_signup_active_screen.dart';
import 'package:insure_9ja/presentation/verification_onetime_animation1_screen/verification_onetime_animation1_screen.dart';
import 'package:insure_9ja/presentation/verification_animation1_screen/verification_animation1_screen.dart';
import 'package:insure_9ja/presentation/set_pin_code_screen/set_pin_code_screen.dart';
import 'package:insure_9ja/presentation/reset_pin_code_screen/reset_pin_code_screen.dart';
import 'package:insure_9ja/presentation/skip_popup_screen/skip_popup_screen.dart';
import 'package:insure_9ja/presentation/pin_code_set_screen/pin_code_set_screen.dart';
import 'package:insure_9ja/presentation/verification_onetime_animation_step3_screen/verification_onetime_animation_step3_screen.dart';
import 'package:insure_9ja/presentation/verification_animation_step3_screen/verification_animation_step3_screen.dart';
import 'package:insure_9ja/presentation/personal_details_screen/personal_details_screen.dart';
import 'package:insure_9ja/presentation/congratulations_animation_step3_screen/congratulations_animation_step3_screen.dart';
import 'package:insure_9ja/presentation/location_screen/location_screen.dart';
import 'package:insure_9ja/presentation/app_update_screen/app_update_screen.dart';
import 'package:insure_9ja/presentation/splash_reboot_screen/splash_reboot_screen.dart';
import 'package:insure_9ja/presentation/signin_screen/signin_screen.dart';
import 'package:insure_9ja/presentation/signin_wrongpassword_screen/signin_wrongpassword_screen.dart';
import 'package:insure_9ja/presentation/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:insure_9ja/presentation/forgotpassword_success_screen/forgotpassword_success_screen.dart';
import 'package:insure_9ja/presentation/home_container_screen/home_container_screen.dart';
import 'package:insure_9ja/presentation/top_doctor_screen/top_doctor_screen.dart';
import 'package:insure_9ja/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboarding1Screen = '/onboarding1_screen';

  static const String onboarding2Screen = '/onboarding2_screen';

  static const String onboarding3Screen = '/onboarding3_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationActiveScreen = '/verification_active_screen';

  static const String verificationOnetimeAnimationScreen =
      '/verification_onetime_animation_screen';

  static const String verificationAnimationScreen =
      '/verification_animation_screen';

  static const String completeSignupScreen = '/complete_signup_screen';

  static const String completeSignupActiveScreen =
      '/complete_signup_active_screen';

  static const String verificationOnetimeAnimation1Screen =
      '/verification_onetime_animation1_screen';

  static const String verificationAnimation1Screen =
      '/verification_animation1_screen';

  static const String setPinCodeScreen = '/set_pin_code_screen';

  static const String resetPinCodeScreen = '/reset_pin_code_screen';

  static const String skipPopupScreen = '/skip_popup_screen';

  static const String pinCodeSetScreen = '/pin_code_set_screen';

  static const String verificationOnetimeAnimationStep3Screen =
      '/verification_onetime_animation_step3_screen';

  static const String verificationAnimationStep3Screen =
      '/verification_animation_step3_screen';

  static const String personalDetailsScreen = '/personal_details_screen';

  static const String congratulationsAnimationStep3Screen =
      '/congratulations_animation_step3_screen';

  static const String locationScreen = '/location_screen';

  static const String appUpdateScreen = '/app_update_screen';

  static const String splashRebootScreen = '/splash_reboot_screen';

  static const String signinScreen = '/signin_screen';

  static const String signinWrongpasswordScreen =
      '/signin_wrongpassword_screen';

  static const String forgotpasswordScreen = '/forgotpassword_screen';

  static const String forgotpasswordSuccessScreen =
      '/forgotpassword_success_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String topDoctorScreen = '/top_doctor_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    onboarding1Screen: (context) => Onboarding1Screen(),
    onboarding2Screen: (context) => Onboarding2Screen(),
    onboarding3Screen: (context) => Onboarding3Screen(),
    signUpScreen: (context) => SignUpScreen(),
    verificationScreen: (context) => VerificationScreen(),
    verificationActiveScreen: (context) => VerificationActiveScreen(),
    verificationOnetimeAnimationScreen: (context) =>
        VerificationOnetimeAnimationScreen(),
    verificationAnimationScreen: (context) => VerificationAnimationScreen(),
    completeSignupScreen: (context) => CompleteSignupScreen(),
    completeSignupActiveScreen: (context) => CompleteSignupActiveScreen(),
    verificationOnetimeAnimation1Screen: (context) =>
        VerificationOnetimeAnimation1Screen(),
    verificationAnimation1Screen: (context) => VerificationAnimation1Screen(),
    setPinCodeScreen: (context) => SetPinCodeScreen(),
    resetPinCodeScreen: (context) => ResetPinCodeScreen(),
    skipPopupScreen: (context) => SkipPopupScreen(),
    pinCodeSetScreen: (context) => PinCodeSetScreen(),
    verificationOnetimeAnimationStep3Screen: (context) =>
        VerificationOnetimeAnimationStep3Screen(),
    verificationAnimationStep3Screen: (context) =>
        VerificationAnimationStep3Screen(),
    personalDetailsScreen: (context) => PersonalDetailsScreen(),
    congratulationsAnimationStep3Screen: (context) =>
        CongratulationsAnimationStep3Screen(),
    locationScreen: (context) => LocationScreen(),
    appUpdateScreen: (context) => AppUpdateScreen(),
    splashRebootScreen: (context) => SplashRebootScreen(),
    signinScreen: (context) => SigninScreen(),
    signinWrongpasswordScreen: (context) => SigninWrongpasswordScreen(),
    forgotpasswordScreen: (context) => ForgotpasswordScreen(),
    forgotpasswordSuccessScreen: (context) => ForgotpasswordSuccessScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    topDoctorScreen: (context) => TopDoctorScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
