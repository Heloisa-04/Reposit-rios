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
    bool estado = true;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              CustomTitle(text: "Sign-in",),
              SizedBox(height: 24,),
              CustomTextfield(hintText: "Password", obscure: estado,),
              SizedBox(height: 14,),
              CustomButton( text: "Ver senha",  onPressed:(){},),
              SizedBox(height: 14,),
              CustomButton( text: "Continue",  onPressed:(){
                setState(){
                  estado = !estado 
                }
              },),

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