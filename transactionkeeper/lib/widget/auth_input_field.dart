import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transactionkeeper/util/const.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    this.icon = FontAwesomeIcons.user,
    this.hintText,
    this.inputType = TextInputType.name,
  }) : super(key: key);

  final IconData icon;
  final String hintText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4.0,
      borderRadius: BorderRadius.circular(50),
      child: TextField(
        keyboardType: inputType,
        obscureText: inputType == TextInputType.visiblePassword,
        style: boldTextStyle.copyWith(fontSize: 14, color: Colors.blue),
        decoration: InputDecoration(
          hintText: "$hintText",
          fillColor: Colors.white,
          // disabledBorder: ,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          prefixIcon: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
