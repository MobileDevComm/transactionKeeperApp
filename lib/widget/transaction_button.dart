import 'package:flutter/material.dart';
class TransButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const TransButton({
    required this.title,
    required this.onPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child:  Text(title, style: const TextStyle(color: Colors.white),),
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.blue,
    );
  }
}
