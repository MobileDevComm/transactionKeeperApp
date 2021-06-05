import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transactionkeeper/util/const.dart';
import 'package:transactionkeeper/widget/auth_input_field.dart';

import 'login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9999),
      body: Stack(
        children: [
          Positioned(
              top: 30,
              left: 10,
              child: InkWell(
                splashColor: Colors.grey.shade300,
                radius: 24.0,
                onTap: () async {
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 32,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              top: 80.0,
              right: 24.0,
              bottom: 24.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Let's Get Started!",
                    style: boldTextStyle,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: EdgeInsets.only(bottom: 16),
                    child: Text(
                      "Create an account to Q Allure to get all features",
                      style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InputField(
                      hintText: "Enter your name",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InputField(
                      hintText: "Email",
                      icon: Icons.mail_outline,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InputField(
                      hintText: "Phone",
                      icon: Icons.phone_android_sharp,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InputField(
                        hintText: "Password",
                        icon: Icons.lock,
                        inputType: TextInputType.visiblePassword),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InputField(
                      hintText: "Confirm Password",
                      icon: Icons.lock,
                      inputType: TextInputType.visiblePassword,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0, top: 36.0),
                    child: Material(
                      elevation: 4,
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(50),
                      child: TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 52.0, vertical: 8),
                          child: Text(
                            "Create",
                            style: boldTextStyle.copyWith(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => LoginScreen()));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text("Login here",
                                style: boldTextStyle.copyWith(
                                    fontSize: 14, color: Colors.blue)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
