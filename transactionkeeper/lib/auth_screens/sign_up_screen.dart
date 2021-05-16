
import 'package:flutter/material.dart';
import 'login.dart';

class SignUpp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ) ,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Column(
              children: [
                Text(
                  'Let\'s Get Started!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text(
                  'Create an account to get all features',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextFormField(
                        keyboardType: TextInputType.name,
                        // controller: ,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.blue,
                                // style: BorderStyle.none,
                              )),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person_outline),
                          hintText: 'Full Name',
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        // controller: ,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.blue,
                                // style: BorderStyle.none,
                              )),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.mail_outline),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextFormField(
                        keyboardType: TextInputType.phone,
                        // controller: ,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.blue,
                                // style: BorderStyle.none,
                              )),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.phone_android_outlined),
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        // controller: ,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 1.0,
                              color: Colors.blue,
                              // style: BorderStyle.none,
                            ),
                          ),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock_outlined),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 1.0,
                              color: Colors.blue,
                              // style: BorderStyle.none,
                            )),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_outlined),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 180,
            child: ElevatedButton(
              style: TextButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              backgroundColor: Colors.blue[800],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('CREATE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text('Login here',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
