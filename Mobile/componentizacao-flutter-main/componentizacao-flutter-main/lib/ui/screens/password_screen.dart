import 'package:componentes_flutter/ui/widgets/custom_textfield.dart';
import 'package:componentes_flutter/ui/widgets/custom_button.dart';
import 'package:componentes_flutter/ui/widgets/custom_textbutton.dart';
import 'package:componentes_flutter/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:componentes_flutter/ui/screens/forgot_password.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              CustomTitle(text: "Sign-in",),
              SizedBox(height: 24,),
              CustomTextfield(hintText: "Password", obscure: true,),
              SizedBox(height: 14,),
              CustomButton( text: "Continue",  onPressed:(){},),
              CustomTextbutton(text: "Forgot Password ?", textButton: "Reset", onPressed: () {
                    Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword(),
                              ),
                    );
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}