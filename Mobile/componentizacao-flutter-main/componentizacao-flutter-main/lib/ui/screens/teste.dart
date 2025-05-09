import 'package:componentes_flutter/ui/widgets/custom_button.dart';
import 'package:componentes_flutter/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  String text = 'Olá'; // Agora está fora do build
  int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTitle(text: count. toString()),
          CustomTitle(text: text),
          SizedBox(height: 20),
          CustomButton(
            text: "Mude o botão",
            onPressed: () {
              setState(() {   });
              count++;
            },
          ),

          SizedBox(height: 40,),

          CustomButton(
            text: "diminuir 1",
            onPressed: () {
              setState(() {   });
              count = count -1 ;
            },
          ),

          SizedBox(height: 40,),

          CustomButton(
            text: "Zerar",
            onPressed: () {
              setState(() {   });
              count = 0 ;
              
            },
          ),
        ],
      ),
    );
  }
}
