import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:transaction_keeper_app/screens/transaction/home.dart';
import 'package:transaction_keeper_app/screens/auth/sign_up_screen.dart';
import 'package:transaction_keeper_app/screens/onboarding_screen.dart';
import 'package:transaction_keeper_app/screens/splash_screen.dart';

import '../screens/auth/login_screen.dart';
import '../screens/welcome_screen.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: LoginScreen),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: WelcomeScreen),
    MaterialRoute(page: OnboardingScreen),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
  ],
)
class $AppSetup {}
