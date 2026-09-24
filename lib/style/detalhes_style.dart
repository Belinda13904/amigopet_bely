import 'package:flutter/material.dart';

class DetalhesStyle {

  static const Color marrom =
  Color(0xFF6D4C41);

  static const Color marromEscuro =
  Color(0xFF4E342E);

  static const Color laranja =
  Color(0xFFFF9800);

  static const Color amarelo =
  Color(0xFFFFC107);

  static const Color branco =
      Colors.white;

  static const Color fundo =
  Color(0xFFFFF8F2);

  static const TextStyle titulo =
  TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle nome =
  TextStyle(
    color: marromEscuro,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descricao =
  TextStyle(
    color: Colors.black87,
    fontSize: 16,
  );

  static final ButtonStyle botaoPrincipal =
  ElevatedButton.styleFrom(
    backgroundColor: laranja,
    foregroundColor: Colors.white,

    minimumSize:
    const Size(double.infinity, 50),

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
  );

  static final ButtonStyle botaoSecundario =
  ElevatedButton.styleFrom(
    backgroundColor: marrom,
    foregroundColor: Colors.white,

    minimumSize:
    const Size(double.infinity, 50),

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
  );
}