import 'package:compass/ui/widgets/custom_textfied.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            CustomTextfied(
              text: "Email",
              obscure: false,
            ),
            SizedBox(height: 20,),
            CustomTextfied(
              text: "Senha",
              obscure: true,
            ),
            ElevatedButton(onPressed: (){}
            , child: Text("Login"))
          ],
        ),
      ),
    );
  }

}