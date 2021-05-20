import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  String hint_text;
  IconData icon;
  InputText({
    this.icon,
    this.hint_text,
  });
  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
      Container(
      decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
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
              )
          ),
          border: InputBorder.none,
          prefixIcon: Icon(widget.icon),
          hintText: widget.hint_text,
          hintStyle: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    ),
    ],
    ),
    );
  }
}

class Password extends StatefulWidget {
  String hint_text;
  IconData icon;
  Password({
    this.icon,
    this.hint_text,
  });
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
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
                )
            ),
            border: InputBorder.none,
            prefixIcon: Icon(widget.icon),
            hintText: widget.hint_text,
            hintStyle: TextStyle(
              fontSize: 15,
            ),
          )),
    );
  }
}

