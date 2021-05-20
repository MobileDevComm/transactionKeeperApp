import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String firstText;
  final Widget screen;
  const SignInButton({
    this.firstText,
    this.screen,
    Key key,
    @required GlobalKey<FormState> globalKey,
  })  : _globalKey = globalKey,
        super(key: key);

  final GlobalKey<FormState> _globalKey;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation: 10,
      shadowColor: Colors.blue,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: MediaQuery.of(context).size.width * 1.6 / 4,
        decoration: BoxDecoration(
          color: Colors.blue[900],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          onPressed: () {
            // validates form details
            if (!_globalKey.currentState.validate()) {
              return;
            }
            _globalKey.currentState.save();
            //Navigates to main screen  which is th  welcome screen
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => screen));
          },
          child: Text(
            '$firstText'.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
