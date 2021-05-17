import 'package:flutter/material.dart';
import 'package:transactionkeeper/auth_screens/sign_up_screen.dart';
import 'auth_screens/login.dart';
import 'screens/home/home.dart';


void main() {
  runApp(TKApp());
}

class TKApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Transaction Keeper",
      home: Login(),
    );
  }
}
