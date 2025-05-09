import 'package:componentes_flutter/ui/screens/password_screen.dart';
import 'package:componentes_flutter/ui/widgets/custom_button.dart';
import 'package:componentes_flutter/ui/widgets/custom_textbutton.dart';
import 'package:componentes_flutter/ui/widgets/custom_textfield.dart';
import 'package:componentes_flutter/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTitle(text: "Sign-in",),
              SizedBox(height: 24,),
              CustomTextfield(hintText: "Email:",),
              SizedBox(height: 14,),
              CustomButton(
                text: "Continue", 
                onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PasswordScreen(),
                  ),
                );
                },
              ),
              CustomTextbutton(text: "Dont have Account", textButton: "Create", onPressed: () {},)
              ,
              SizedBox(height: 60,),
              CustomButton(
                text: "Continue with Apple",
                onPressed: (){},
                backgroundColor: Color(0xFFF4F4F4),
                textColor: Colors.black,
                icon: Icon(Icons.apple, color: Colors.black, size: 24,)
              )
            ,
            SizedBox(height: 14,),
            CustomButton(
              text: "Continue with Google",
              onPressed: (){},
              backgroundColor: Color(0xFFF4F4F4),
              textColor: Colors.black,
              icon: Image.asset("assets/icons/google.png", width: 24,)
            )
            ,
            SizedBox(height: 14,),
            CustomButton(
              text: "Continue with Facebook",
              onPressed: (){},
              backgroundColor: Color(0xFFF4F4F4),
              textColor: Colors.black,
              icon: Image.asset("assets/icons/facebook.png", width: 24,)
            )
            ],
          ),
        ),
      ),
    );
  }
}