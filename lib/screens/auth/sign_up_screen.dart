import 'package:flutter/material.dart';
import 'package:transaction_keeper_app/bottom_sheet/add_transaction_bottom_sheet.dart';
import 'package:stacked/stacked.dart';
import 'package:transaction_keeper_app/screens/auth/login_screen.dart';
import 'package:transaction_keeper_app/widget/transaction_button.dart';
import 'login_screen_view_model.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController fNameController = TextEditingController();
    final TextEditingController businessNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController verifyPasswordController = TextEditingController();
    return ViewModelBuilder<AuthViewModel>.reactive(
        viewModelBuilder: () => AuthViewModel(),
        builder: (context, model, _) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Text('Let\'s get started', style: TextStyle(color: Colors.blue, fontSize: 15,fontWeight: FontWeight.w400),),
                      ),
                      const Text('Join Trak', style: TextStyle(color: Colors.blue, fontSize: 35,fontWeight: FontWeight.w600),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LoginTextField(
                                label: 'Business Name',
                                controller: businessNameController,
                                validator: (value)=>model.validateTextField(value),
                              ),
                              LoginTextField(
                                label: 'Email',
                                controller: emailController,
                                validator: (value)=> model.validateEmail(value),
                              ),
                              LoginTextField(
                                label: 'Phone number',
                                controller: phoneController,
                                keyboardType: TextInputType.phone,
                                validator: (value)=>model.validateTextField(value),
                              ),
                              LoginTextField(
                                label: 'Password',
                                validator: (value)=> model.validatePassword(value),
                                controller: passwordController,
                              ),
                              LoginTextField(
                                label: 'Verify Password',
                                validator: (value)=> model.validatePassword(value),
                                controller: verifyPasswordController,
                              ),
                            ],
                          ),
                        ),
                      ),
                      TransButton(
                          title: 'Create account',
                          onPressed: () => model.createAccount(
                              emailController.text, passwordController.text))
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
