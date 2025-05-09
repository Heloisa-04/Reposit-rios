import 'package:componentes_flutter/ui/widgets/custom_textfield.dart';
import 'package:componentes_flutter/ui/widgets/custom_button.dart';
import 'package:componentes_flutter/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';



class ForgotPassword extends StatelessWidget {
  const ForgotPassword ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              CustomTitle(text: "Create Account",),
              SizedBox(height: 24,),
              CustomTextfield(hintText: "Enter email addres",),
              SizedBox(height: 14,),
              CustomButton( text: "Continue",  onPressed:(){},),
            ],
          ),
        ),
      ),
    );
  }
}