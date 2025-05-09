import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final bool obscure;
  
  const CustomTextfield({
    super.key, 
    required this.hintText,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(14),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey),
        border: InputBorder.none,
        hintText: hintText,
        fillColor: Color(0xffF4F4F4)
      ),
    );
  }
}