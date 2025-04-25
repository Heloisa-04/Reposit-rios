import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override //sobreescrever o widget
  Widget build(BuildContext context) {
     return Scaffold(
      body: Padding(
       padding : const EdgeInsets.all(20),
       child: Column(
        children: [
          Text("Login"),
          SizedBox(height: 60,)

        ],
       ),
       
       
       
       
       
       
       )


    ); // criar o esqueleto de uma aplicação
  }
}