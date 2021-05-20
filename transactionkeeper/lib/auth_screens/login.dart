import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transactionkeeper/util/const.dart';
import 'package:transactionkeeper/widget/auth_input_field.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9589),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.only(top: 24.0),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.grey.shade100, BlendMode.modulate),
                  child: Image.asset(
                    "images/login-illustration.png",
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Text(
                "Welcome back!",
                style: boldTextStyle,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Log in to your existing account of Q Allure",
                  style:
                      TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InputField(
                  hintText: "Enter User name",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InputField(
                  hintText: "Password",
                  icon: Icons.lock,
                  inputType: TextInputType.visiblePassword,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12, bottom: 20),
                  child: Text(
                    "Forget Password?",
                    style: boldTextStyle.copyWith(fontSize: 14),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0, top: 8.0),
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
                        "LOG IN",
                        style: boldTextStyle.copyWith(
                            fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Or connect using",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SocialButton(
                          icon: FontAwesomeIcons.facebookF,
                          color: Colors.blue.shade700,
                          label: "Faceboook",
                          onClick: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SocialButton(
                          icon: FontAwesomeIcons.google,
                          color: Colors.red.shade400,
                          label: "Google",
                          onClick: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text("Sign Up",
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
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key key,
    this.icon,
    this.label,
    this.onClick,
    this.color,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Function onClick;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: TextButton(
        onPressed: onClick,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Text(
                "$label",
                style:
                    boldTextStyle.copyWith(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
