import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:transaction_keeper_app/widget/transaction_button.dart';
import '../app/app_setup.locator.dart';
import '../app/app_setup.router.dart';
class OnboardingScreen  extends StatelessWidget {
  const OnboardingScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Text('Trak',style: TextStyle(color: Colors.blue,fontSize: 70, fontWeight: FontWeight.w700,),textAlign: TextAlign.center, ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TransButton(title: 'Sign In',onPressed:()=> locator<NavigationService>().navigateTo(Routes.loginScreen),)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TransButton(title: 'Create Account',onPressed: ()=> locator<NavigationService>().navigateTo(Routes.signUpScreen)),
          ),
        ],
      ),
    );
  }
}
