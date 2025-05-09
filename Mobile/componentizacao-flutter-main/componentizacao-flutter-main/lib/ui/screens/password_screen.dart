import 'package:componentes_flutter/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              CustomTextfield(hintText: "Password", obscure: true,)
            ],
          ),
        ),
      ),
    );
  }
}