import 'package:flutter/material.dart';

import 'package:amigopet_bely/style/inicio_style.dart';
import 'package:amigopet_bely/telas/lista_cuidadores.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: InicioStyle.fundo,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                // ==========================
                // LOGO
                // ==========================

                Image.asset(
                  'assets/imagens/amigopet.png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 50),

                // ==========================
                // BOTÃO COMEÇAR
                // ==========================

                SizedBox(
                  width: 220,
                  height: 55,

                  child: ElevatedButton(
                    style: InicioStyle.botaoComecar,

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ListaCuidadores();
                          },
                        ),
                      );
                    },

                    child: const Text(
                      'COMEÇAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}