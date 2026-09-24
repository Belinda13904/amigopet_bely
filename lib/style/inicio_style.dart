import 'package:flutter/material.dart';

class InicioStyle {
  static const Color marrom = Color(0xFF6D4C41);
  static const Color marromEscuro = Color(0xFF4E342E);
  static const Color laranja = Color(0xFFFF9800);
  static const Color amarelo = Color(0xFFFFC107);
  static const Color branco = Colors.white;
  static const Color fundo = Color(0xFF6D4C41);

  static final ButtonStyle botaoComecar =
  ElevatedButton.styleFrom(
    backgroundColor: laranja,
    foregroundColor: branco,
    elevation: 4,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}