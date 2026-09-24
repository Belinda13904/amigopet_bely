import 'package:flutter/material.dart';

class ListaStyle {

  // ==========================
  // CORES
  // ==========================

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

  // ==========================
  // TÍTULO
  // ==========================

  static const TextStyle titulo =
  TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  // ==========================
  // NOME
  // ==========================

  static const TextStyle nomeCuidador =
  TextStyle(
    color: marromEscuro,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  // ==========================
  // INFORMAÇÃO
  // ==========================

  static const TextStyle informacao =
  TextStyle(
    color: Colors.grey,
    fontSize: 13,
  );

  // ==========================
  // DESCRIÇÃO
  // ==========================

  static const TextStyle descricao =
  TextStyle(
    color: Colors.black87,
    fontSize: 13,
  );

  // ==========================
  // PREÇO
  // ==========================

  static const TextStyle preco =
  TextStyle(
    color: marrom,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  // ==========================
  // BOTÃO DETALHES
  // ==========================

  static final ButtonStyle botaoDetalhes =
  ElevatedButton.styleFrom(
    backgroundColor: laranja,
    foregroundColor: Colors.white,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
}