import 'package:flutter/material.dart';

import 'package:amigopet_bely/style/detalhes_style.dart';

class DetalhesCuidadores extends StatelessWidget {

  final Map<String, dynamic> cuidador;

  const DetalhesCuidadores({
    super.key,
    required this.cuidador,
  });

  // ==========================================
  // CANCELAR AGENDAMENTO
  // ==========================================

  void cancelarAgendamento(
      BuildContext context) {

    showDialog(
      context: context,

      builder: (context) {

        return AlertDialog(

          title: const Text(
            'Cancelar agendamento?',
          ),

          content: const Text(
            'Tem certeza que deseja cancelar este agendamento?',
          ),

          actions: [

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text(
                'Não',
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                DetalhesStyle.laranja,
                foregroundColor:
                Colors.white,
              ),

              onPressed: () {

                Navigator.pop(context);

                ScaffoldMessenger.of(context)
                    .showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Agendamento cancelado.',
                    ),
                  ),
                );
              },

              child: const Text(
                'Sim, cancelar',
              ),
            ),
          ],
        );
      },
    );
  }

  // ==========================================
  // TIPO DE SERVIÇO
  // ==========================================

  void selecionarServico(
      BuildContext context) {

    showDialog(
      context: context,

      builder: (context) {

        return SimpleDialog(

          title: const Text(
            'Tipo de serviço',
          ),

          children: [

            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text(
                'Passeio',
              ),
            ),

            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text(
                'Hospedagem',
              ),
            ),

            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text(
                'Banho e tosa',
              ),
            ),
          ],
        );
      },
    );
  }

  // ==========================================
  // MAIS OPÇÕES
  // ==========================================

  void maisOpcoes(
      BuildContext context) {

    showModalBottomSheet(
      context: context,

      backgroundColor:
      DetalhesStyle.fundo,

      builder: (context) {

        return SafeArea(

          child: Column(

            mainAxisSize:
            MainAxisSize.min,

            children: [

              ListTile(

                leading: const Icon(
                  Icons.share,
                  color:
                  DetalhesStyle.laranja,
                ),

                title: const Text(
                  'Compartilhar perfil',
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(

                leading: const Icon(
                  Icons.report,
                  color: DetalhesStyle.marrom,
                ),

                title: const Text(
                  'Denunciar',
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      DetalhesStyle.fundo,

      // ==================================
      // APPBAR
      // ==================================

      appBar: AppBar(

        backgroundColor:
        DetalhesStyle.marrom,

        foregroundColor:
        Colors.white,

        centerTitle: true,

        title: Image.asset(
          'assets/imagens/amigopet.png',
          height: 100,
        ),

        actions: [

          IconButton(

            icon: const Icon(
              Icons.more_vert,
            ),

            onPressed: () {
              maisOpcoes(context);
            },
          ),
        ],
      ),

      // ==================================
      // CONTEÚDO
      // ==================================

      body: SingleChildScrollView(

        padding:
        const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Center(

              child: CircleAvatar(

                radius: 65,

                backgroundColor:
                DetalhesStyle.laranja,

                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Center(

              child: Text(
                cuidador['nome'],
                style: DetalhesStyle.nome,
              ),
            ),

            const SizedBox(
              height: 8,
            ),

            Center(

              child: Row(

                mainAxisAlignment:
                MainAxisAlignment.center,

                children: [

                  const Icon(
                    Icons.star,
                    color:
                    DetalhesStyle.amarelo,
                  ),

                  const SizedBox(
                    width: 5,
                  ),

                  Text(
                    cuidador['avaliacao'],
                    style:
                    const TextStyle(
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Text(
              cuidador['local'],
              style:
              DetalhesStyle.descricao,
            ),

            const SizedBox(
              height: 12,
            ),

            Text(
              cuidador['descricao'],
              style:
              DetalhesStyle.descricao,
            ),

            const SizedBox(
              height: 12,
            ),

            Text(
              cuidador['preco'],
              style:
              const TextStyle(
                color:
                DetalhesStyle.marrom,
                fontSize: 18,
                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // TIPO DE SERVIÇO

            SizedBox(

              width:
              double.infinity,

              child: ElevatedButton(

                style:
                DetalhesStyle.botaoPrincipal,

                onPressed: () {
                  selecionarServico(
                    context,
                  );
                },

                child: const Text(
                  'Tipo de serviço',
                ),
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            // CANCELAR

            SizedBox(

              width:
              double.infinity,

              child: ElevatedButton(

                style:
                DetalhesStyle.botaoSecundario,

                onPressed: () {

                  cancelarAgendamento(
                    context,
                  );
                },

                child: const Text(
                  'Cancelar agendamento',
                ),
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            // MAIS OPÇÕES

            SizedBox(

              width:
              double.infinity,

              child: OutlinedButton(

                style:
                OutlinedButton.styleFrom(
                  foregroundColor:
                  DetalhesStyle.marrom,

                  side: const BorderSide(
                    color:
                    DetalhesStyle.marrom,
                  ),

                  minimumSize:
                  const Size(
                    double.infinity,
                    50,
                  ),

                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(
                      14,
                    ),
                  ),
                ),

                onPressed: () {
                  maisOpcoes(context);
                },

                child: const Text(
                  'Mais opções',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}