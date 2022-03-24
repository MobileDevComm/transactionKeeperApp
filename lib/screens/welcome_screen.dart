import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:transaction_keeper_app/app/app_setup.locator.dart';
import 'package:transaction_keeper_app/app/app_setup.router.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({ Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      locator<NavigationService>().navigateTo(Routes.homeScreen);
    });
    // controller = AnimationController(
    //   duration: Duration(seconds: 1),
    //   vsync: this,
    // );
    // animation = ColorTween(begin: Colors.blue, end: Colors.white)
    //     .animate(controller!);
    // controller!.forward();
    // controller!.addListener((){
    //   setState(() {});
    // });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Welcome', style: TextStyle(color: Colors.red, fontSize: 72, fontWeight: FontWeight.w900),),
            ]),
      ),
    );
  }
}
