import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  final String text;
  final Color color;
  const Buttons({this.color, this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(text, style: TextStyle(color: color)),
        ),
        style: ElevatedButton.styleFrom(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          primary: Colors.blue[900],
        ),
      ),
    );
  }
}
