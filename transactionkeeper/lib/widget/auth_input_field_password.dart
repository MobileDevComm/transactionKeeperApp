import 'package:flutter/material.dart';

class TextFormFieldPassword extends StatefulWidget {
  @override
  _TextFormFieldPasswordState createState() => _TextFormFieldPasswordState();
}

class _TextFormFieldPasswordState extends State<TextFormFieldPassword> {
  String passwordController;

  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 3.7 / 4,
      child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          maxLines: 1,
          obscureText: _isHidden,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none),
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
            hintText: 'Password',
            hintStyle: TextStyle(
              fontSize: 14,
            ),
            prefixIcon: Icon(
              Icons.lock,
            ),
            suffix: InkWell(
              onTap: _togglePasswordView,
              child: Icon(
                _isHidden ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey.withOpacity(0.6),
              ),
            ),
          ),
          validator: (String value) {
            if (value.isEmpty || value == null) {
              return '*Password is Required';
            } else {
              if ((value.length <= 2)) {
                return '*Password should be at least 3 characters';
              } else {
                if ((value.length >= 10)) {
                  return '*Password should not be more than 9 characters long';
                }
              }
            }

            return null;
          },
          onSaved: (String value) {
            passwordController = value;
          }),
    );
  }
}
