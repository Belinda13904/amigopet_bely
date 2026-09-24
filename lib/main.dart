import 'package:flutter/material.dart';
import 'package:amigopet_bely/telas/inicio.dart';

void main() {
  runApp(const AmigoPet());
}

class AmigoPet extends StatelessWidget {
  const AmigoPet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'AmigoPet',

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6D4C41),
        ),
      ),

      home: const Inicio(),
    );
  }
}