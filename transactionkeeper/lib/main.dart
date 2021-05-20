import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transactionkeeper/screens/profile_screen/profile_screen.dart';
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
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: Profile_Screen(),
    );
  }
}
