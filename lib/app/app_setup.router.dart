// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../screens/auth/login_screen.dart';
import '../screens/auth/sign_up_screen.dart';
import '../screens/transaction/home.dart';
import '../screens/onboarding_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signUpScreen = '/sign-up-screen';
  static const String loginScreen = '/login-screen';
  static const String homeScreen = '/home-screen';
  static const String welcomeScreen = '/welcome-screen';
  static const String onboardingScreen = '/onboarding-screen';
  static const all = <String>{
    splashScreen,
    signUpScreen,
    loginScreen,
    homeScreen,
    welcomeScreen,
    onboardingScreen,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.signUpScreen, page: SignUpScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.welcomeScreen, page: WelcomeScreen),
    RouteDef(Routes.onboardingScreen, page: OnboardingScreen),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashScreen(),
        settings: data,
      );
    },
    SignUpScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpScreen(),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeScreen(),
        settings: data,
      );
    },
    WelcomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const WelcomeScreen(),
        settings: data,
      );
    },
    OnboardingScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OnboardingScreen(),
        settings: data,
      );
    },
  };
}
