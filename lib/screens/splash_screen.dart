import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:transaction_keeper_app/app/app_setup.locator.dart';
import 'package:transaction_keeper_app/app/app_setup.router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      locator<NavigationService>().navigateTo(Routes.onboardingScreen);
    });
    controller = AnimationController(
      duration: Duration(seconds: 6),
      vsync: this,
    );
    animation =
        ColorTween(begin: Colors.white, end: Colors.blue).animate(controller!);
    controller!.forward();
    controller!.addListener(() {
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.white,
              ),
               Text(
                'Trak',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: controller!.value*50,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }
}
