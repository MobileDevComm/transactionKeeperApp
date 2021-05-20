import 'package:flutter/material.dart';

class Inkwells extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const Inkwells({
    this.icon,
    this.text,
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 30),
        height: 50.0,
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
