import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  final String text;
  final String textButton;
  final VoidCallback onPressed;
  const CustomTextbutton({super.key, required this.onPressed, required this.text, required this.textButton,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        TextButton(onPressed: onPressed, child: Text(textButton, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))
      ],
    );
  }
}