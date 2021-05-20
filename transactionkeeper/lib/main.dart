import 'package:flutter/material.dart';

import 'auth_screens/login.dart';

void main() {
  runApp(TKApp());
}

class TKApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Transaction Keeper",
      home: LoginScreen(),
    );
  }
}
