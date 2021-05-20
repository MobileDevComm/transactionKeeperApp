
import 'package:flutter/material.dart';
import 'package:transactionkeeper/widget/auth_input_field.dart';
import 'package:transactionkeeper/widget/buttons.dart';
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
          InputText(hint_text: 'Full Name', icon: Icons.person_outline),
          InputText(hint_text: 'Email', icon: Icons.mail_outline),
          InputText(hint_text: 'Phone', icon: Icons.phone_android_rounded),
          Password(icon: Icons.lock_outline, hint_text: "Password"),
          Password(icon: Icons.lock_outline, hint_text: "Confirm Password"),
          SizedBox(
            height: 10,
          ),
          Buttons(text: 'Create'.toUpperCase(), color: Colors.white),
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
