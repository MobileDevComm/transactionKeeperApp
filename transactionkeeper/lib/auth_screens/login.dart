import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transactionkeeper/auth_screens/sign_up_screen.dart';
import 'package:transactionkeeper/screens/home/home.dart';
import 'package:transactionkeeper/widget/auth_input_field_email.dart';
import 'package:transactionkeeper/widget/auth_input_field_password.dart';
import 'package:transactionkeeper/widget/main_buttons.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final hintText = 'jhoneswilliam@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 40,
                  ),
                  child: Image.asset(
                    'images/login-illustration.png',
                    height: 200,
                    width: 200,
                  ),
                ),
                Text('Welcome back!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    )),
                Text('Log in to your existant account of Transactions',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    )),
                SizedBox(height: 25),
                TextFormFieldEmail('$hintText'),
                SizedBox(height: 20),
                TextFormFieldPassword(),
                // Forgot Password Button
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                //--------------------------------------Login Button----------------------------------------
                SignInButton(
                  globalKey: _globalKey,
                  firstText: 'Log in',
                  screen: Home(),
                ),
                //--------------------------------------Login Button----------------------------------------
                SizedBox(height: 15),
                Text('Or connect using '),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: MediaQuery.of(context).size.width * 1.2 / 4,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(FontAwesomeIcons.facebookSquare
                                  // primaryColor: Colors.black.withOpacity(.4),
                                  // secondaryColor: Colors.black,
                                  ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: MediaQuery.of(context).size.width * 1.2 / 4,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                FontAwesomeIcons.google,
                                // primaryColor: Colors.black.withOpacity(.4),
                                // secondaryColor: Colors.black,
                              ),
                              Text(
                                'Google',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: 5.0,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign Up',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            },
                          style: TextStyle(
                            color: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
