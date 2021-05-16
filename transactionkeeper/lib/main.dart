import 'package:flutter/material.dart';
import 'package:transactionkeeper/widget/auth_input_field.dart';
import 'auth_screens/login.dart';
import 'screens/home/home.dart';

void main() {
  runApp(TKApp());
}

class TKApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Transaction Keeper"
      home: DolapoLogin(),
    );
  }
}
