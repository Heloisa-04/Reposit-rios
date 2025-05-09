import 'package:componentes_flutter/ui/widgets/custom_button.dart';
import 'package:componentes_flutter/ui/widgets/custom_textbutton.dart';
import 'package:componentes_flutter/ui/widgets/custom_textfield.dart';
import 'package:componentes_flutter/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:componentes_flutter/ui/screens/forgot_password.dart';


class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

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
              CustomTextfield(hintText: "Firstname"),
              SizedBox(height: 14,),
              CustomTextfield(hintText: "Lastname"),
              SizedBox(height: 14,),
              CustomTextfield(hintText: "Email Adress"),
              SizedBox(height: 14,),
              CustomTextfield(hintText: "Password"),
              SizedBox(height: 14,),
              CustomButton( text: "Continue",  onPressed:(){},),
              SizedBox(height: 24,),
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