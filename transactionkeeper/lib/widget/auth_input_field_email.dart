import 'package:flutter/material.dart';

class TextFormFieldEmail extends StatefulWidget {
  var hintText;
  TextFormFieldEmail(this.hintText);
  @override
  _TextFormFieldEmailState createState() => _TextFormFieldEmailState();
}

class _TextFormFieldEmailState extends State<TextFormFieldEmail> {
  String emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 3.7 / 4,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        maxLines: 1,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.none, width: 2.0, color: Colors.blueAccent
                // style: BorderStyle.none
                ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              width: 2.0,
              color: Colors.blue,
              // style: BorderStyle.none,
            ),
          ),
          prefixIcon: Icon(
            Icons.person,
          ),
        ),
        validator: (String value) {
          if (value.isEmpty || !value.contains('@') || !value.contains('.')) {
            return '*Enter a valid email';
          }
          return null;
        },
        onSaved: (String value) {
          emailController = value;
        },
      ),
    );
  }
}
