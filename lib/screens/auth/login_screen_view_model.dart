import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:transaction_keeper_app/app/app_setup.locator.dart';
import 'package:transaction_keeper_app/app/app_setup.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:transaction_keeper_app/app_strings.dart';
class AuthViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;
  bool obscureText = false;

  void setVisibility() {
    obscureText = !obscureText;
    notifyListeners();
  }
validateTextField(String? value){
  if (value!.isEmpty) {
    return ('This field is required');
  }
}
  validateEmail(String? value) {
    if (value!.isEmpty) {
      return ('Please enter your email');
    }
    if (!RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return ('Please enter a valid email');
    }
    notifyListeners();
  }

  validatePassword(String? value) {
    RegExp regex = RegExp(r'^.{6,}$');
    if (value!.isEmpty) {
      return ('Please enter your password');
    }
    if (!regex.hasMatch(value)) {
      return ('Please enter a valid password(Min. 6 Characters');
    }
  }

  void signIn() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      _navigationService.replaceWith(Routes.homeScreen);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  login() {
    print('${emailController.text}, ${passwordController.text}');
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      signIn();
    }
    else {
      return null;
    }
  }

  Future? createAccount(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      notifyListeners();
      _navigationService.replaceWith(Routes.welcomeScreen);
    }
    on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}