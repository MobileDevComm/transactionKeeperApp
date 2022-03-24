import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transaction_keeper_app/screens/auth/login_screen_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:transaction_keeper_app/widget/transaction_button.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ViewModelBuilder<AuthViewModel>.reactive(
            viewModelBuilder: ()=> AuthViewModel(),
            builder: (context, model, _) {
              return SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text('Welcome Back!', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30, color: Colors.blue)),
                      ),
                      const Text('Kindly Sign in to continue', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15, color: Colors.blue)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Form(
                        key: model.formKey,
                        child: Column(
                          children: [
                            LoginTextField(
                              label: 'Email',
                              controller: model.emailController,
                              validator:(value)=> model.validateEmail (value),
                            ),
                            LoginTextField(
                              controller: model.passwordController,
                              label: 'Password',
                              validator: (value)=> model.validatePassword(value),
                              suffixIcon: model.obscureText?Icons.visibility:Icons.visibility_off,
                              keyboardType: TextInputType.visiblePassword,
                              onPressed: ()=>model.setVisibility(),
                              obscureText: model.obscureText,
                            ),
                          ],
                        ),
                      ),
                    ),

                      TransButton(title: 'Sign In', onPressed: ()=>model.login()),
                    ],
                  ),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  final String label;
  final Function(String?)? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final IconData? icon;
  final Function()? onPressed;
  final IconData? suffixIcon;
  final bool obscureText;
  const LoginTextField({

    Key? key,
    required this.label,
    this.onFieldSubmitted,
    this.validator,
    required this.controller,
    this.keyboardType,
    this.icon,
    this.onPressed,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          TextFormField(
              obscureText: obscureText,
              onFieldSubmitted: onFieldSubmitted,
              validator: validator,
              textInputAction: label=='Password'?TextInputAction.go:TextInputAction.next,
              controller: controller,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                prefixIcon: Icon(icon),
                label: Text(label),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              )
          ),
          Positioned(
              right: 5,
              child: IconButton(onPressed: onPressed, icon: Icon(suffixIcon))),
        ],
      ),
    );
  }

}
