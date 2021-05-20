import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:transactionkeeper/auth_screens/login.dart';
import 'package:transactionkeeper/screens/home/home.dart';
import 'package:transactionkeeper/widget/auth_input_field_email.dart';
import 'package:transactionkeeper/widget/main_buttons.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var pass;
  String nameController;
  String emailController;
  String passwordController;
  String confirmPasswordController;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool valuefirst = false;
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _togglePasswordsView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Let\'s Get Started!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Text('Create an account to Transactions to get all features',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                  )),
              SizedBox(
                height: 32,
              ),
              //-----------------Text Input field Begins here------------------------
              Container(
                width: MediaQuery.of(context).size.width * 3.7 / 4,
                child: Form(
                  key: _globalKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        maxLines: 1,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.blue[900],
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Colors.blue[900],
                              // style: BorderStyle.none,
                            ),
                          ),
                          hintText: 'Jhones Williams',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return '*Name is Required';
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          nameController = value;
                        },
                      ),
                      SizedBox(height: 22),
                      TextFormFieldEmail('Email'),
                      SizedBox(height: 22),
                      TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          maxLines: 1,
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone_android_sharp,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password',
                            hintStyle: TextStyle(),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0,
                                  color: Colors.blue[900],
                                  style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.blue[900],
                                // style: BorderStyle.none,
                              ),
                            ),
                          ),
                          validator: (String value) {
                            pass = value;
                            if (value.isEmpty || value == null) {
                              return '*Password is Required';
                            } else {
                              if ((value.length <= 2)) {
                                return '*Password should be atleast 3 characters';
                              } else {
                                if ((value.length >= 10)) {
                                  return '*Password shold not be more than 9 characters long';
                                }
                              }
                            }

                            return null;
                          },
                          onSaved: (String value) {
                            passwordController = value;
                          }),
                      SizedBox(
                        height: 22,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        maxLines: 1,
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(),
                          suffix: InkWell(
                            onTap: _togglePasswordsView,
                            child: Icon(
                              _isHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey.withOpacity(0.6),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.blue[900],
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Colors.blue[900],
                              // style: BorderStyle.none,
                            ),
                          ),
                        ),
                        validator: (String value) {
                          if (value.isEmpty || (value != pass)) {
                            return '*Password does not match';
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          confirmPasswordController = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------Text Input field Ends here----------------------------
              SizedBox(
                height: 45,
              ),
              //----------------- Login Button field Starts here------------------------
              SignInButton(
                globalKey: _globalKey,
                firstText: 'Create',
                screen: Home(),
              ),
              // TextButton(
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => PraiseProfilePage()));
              //     },
              //     child: Text('praise')),
              //-----------------Login Button field Ends here------------------------

              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.16,
                ),
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Login here',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
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
    );
  }
}
