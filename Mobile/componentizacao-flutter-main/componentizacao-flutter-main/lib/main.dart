import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:componentes_flutter/ui/screens/teste.dart'; // Substitua pelo nome correto do arquivo

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Teste(),
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.white),
      ),
    );
  }
}
