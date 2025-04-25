import 'package:flutter/material.dart';

class CustomTextfied extends StatelessWidget {

  final String text;
  final bool obscure;

  const CustomTextfied({
    required this.text,
    required this.obscure,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure ,
      decoration: InputDecoration(
        filled: false,
        hintText: text
    )
    );
  }
}