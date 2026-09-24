import 'package:flutter/material.dart';

import 'package:amigopet_bely/style/agendamentos_style.dart';

class Agendamentos extends StatelessWidget {

  const Agendamentos({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      AgendamentosStyle.fundo,

      // ==================================
      // APPBAR
      // ==================================

      appBar: AppBar(

        backgroundColor:
        AgendamentosStyle.marrom,

        foregroundColor:
        Colors.white,

        centerTitle: true,

        title: Image.asset(
          'assets/imagens/amigopet.png',
          height: 100,
        ),
      ),

      // ==================================
      // LISTA
      // ==================================

      body: ListView(

        padding:
        const EdgeInsets.all(16),

        children: [

          const Text(
            'Meus agendamentos',
            style: TextStyle(
              color:
              AgendamentosStyle.marromEscuro,
              fontSize: 24,
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Card(

            elevation: 4,

            shape:
            RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(18),
            ),

            child: Padding(

              padding:
              const EdgeInsets.all(16),

              child: Column(

                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  Row(

                    children: [

                      const CircleAvatar(

                        radius: 30,

                        backgroundColor:
                        AgendamentosStyle.laranja,

                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),

                      const SizedBox(
                        width: 12,
                      ),

                      const Expanded(

                        child: Column(

                          crossAxisAlignment:
                          CrossAxisAlignment.start,

                          children: [

                            Text(
                              'Ana Silva',
                              style:
                              AgendamentosStyle.nome,
                            ),

                            SizedBox(
                              height: 5,
                            ),

                            Text(
                              'Passeio com cachorro',
                              style:
                              AgendamentosStyle.informacao,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  const Divider(),

                  const SizedBox(
                    height: 8,
                  ),

                  const Text(
                    'Data: 25/09/2026',
                    style:
                    AgendamentosStyle.informacao,
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  const Text(
                    'Horário: 14:00',
                    style:
                    AgendamentosStyle.informacao,
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  const Text(
                    'Status: Agendado',
                    style: TextStyle(
                      color:
                      Colors.green,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}