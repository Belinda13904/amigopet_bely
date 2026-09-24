import 'package:flutter/material.dart';

import 'package:amigopet_bely/style/lista_style.dart';
import 'package:amigopet_bely/telas/detalhes_cuidadores.dart';
import 'package:amigopet_bely/telas/agendamentos.dart';

class ListaCuidadores extends StatefulWidget {
  const ListaCuidadores({super.key});

  @override
  State<ListaCuidadores> createState() =>
      _ListaCuidadoresState();
}

class _ListaCuidadoresState
    extends State<ListaCuidadores> {

  final List<Map<String, dynamic>> cuidadores = [

    {
      'nome': 'Ana Silva',
      'local': 'Moema, São Paulo',
      'descricao':
      'Passeadora e cuidadora com 5 anos de experiência.',
      'preco': 'R\$ 45/passeio',
      'avaliacao': '4.9',
    },

    {
      'nome': 'Pedro Souza',
      'local': 'Vila Mariana, São Paulo',
      'descricao':
      'Apaixonado por cães e faz passeios longos.',
      'preco': 'R\$ 70/diária',
      'avaliacao': '4.8',
    },

    {
      'nome': 'Carla Ferreira',
      'local': 'Pinheiros, São Paulo',
      'descricao':
      'Cuida de gatos com muito carinho.',
      'preco': 'R\$ 70/diária',
      'avaliacao': '4.7',
    },

    {
      'nome': 'João Oliveira',
      'local': 'Jardins, São Paulo',
      'descricao':
      'Experiente com cães de grande porte.',
      'preco': 'R\$ 70/diária',
      'avaliacao': '4.9',
    },

    {
      'nome': 'Maria Santos',
      'local': 'Itaim Bibi, São Paulo',
      'descricao':
      'Cuida de pets de todos os tipos.',
      'preco': 'R\$ 70/diária',
      'avaliacao': '4.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: ListaStyle.fundo,

      // ==================================
      // APPBAR
      // ==================================

      appBar: AppBar(

        backgroundColor: ListaStyle.marrom,

        foregroundColor: Colors.white,

        centerTitle: true,

        title: Image.asset(
          'assets/imagens/amigopet.png',
          height: 100,
          fit: BoxFit.contain,
        ),

        // MENU
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),

              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),

        // FILTROS
        actions: [

          PopupMenuButton<String>(

            icon: const Icon(Icons.tune),

            onSelected: (valor) {

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Filtro selecionado: $valor',
                  ),
                ),
              );
            },

            itemBuilder: (context) => const [

              PopupMenuItem(
                value: 'Mais próximos',
                child: Text(
                  'Mais próximos',
                ),
              ),

              PopupMenuItem(
                value: 'Melhor avaliados',
                child: Text(
                  'Melhor avaliados',
                ),
              ),

              PopupMenuItem(
                value: 'Preço',
                child: Text(
                  'Preço menor',
                ),
              ),
            ],
          ),
        ],
      ),

      // ==================================
      // DRAWER
      // ==================================

      drawer: Drawer(

        backgroundColor: ListaStyle.fundo,

        child: ListView(
          padding: EdgeInsets.zero,

          children: [

            DrawerHeader(

              decoration: const BoxDecoration(
                color: ListaStyle.marrom,
              ),

              child: Center(

                child: Image.asset(
                  'assets/imagens/amigopet.png',
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // CUIDADORES

            ListTile(

              leading: const Icon(
                Icons.pets,
                color: ListaStyle.laranja,
              ),

              title: const Text(
                'Cuidadores',
              ),

              onTap: () {
                Navigator.pop(context);
              },
            ),

            // AGENDAMENTOS

            ListTile(

              leading: const Icon(
                Icons.calendar_month,
                color: ListaStyle.laranja,
              ),

              title: const Text(
                'Meus agendamentos',
              ),

              onTap: () {

                Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) {
                      return const Agendamentos();
                    },
                  ),
                );
              },
            ),

            // CONFIGURAÇÕES

            ListTile(

              leading: const Icon(
                Icons.settings,
                color: ListaStyle.laranja,
              ),

              title: const Text(
                'Configurações',
              ),

              onTap: () {

                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Configurações',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      // ==================================
      // LISTA
      // ==================================

      body: ListView.builder(

        padding: const EdgeInsets.all(12),

        itemCount: cuidadores.length,

        itemBuilder: (context, index) {

          final cuidador =
          cuidadores[index];

          return Card(

            margin: const EdgeInsets.only(
              bottom: 12,
            ),

            elevation: 4,

            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(18),
            ),

            child: Padding(

              padding:
              const EdgeInsets.all(12),

              child: Row(

                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  // ==========================
                  // FOTO
                  // ==========================

                  CircleAvatar(

                    radius: 38,

                    backgroundColor:
                    ListaStyle.laranja,

                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 38,
                    ),
                  ),

                  const SizedBox(
                    width: 12,
                  ),

                  // ==========================
                  // INFORMAÇÕES
                  // ==========================

                  Expanded(

                    child: Column(

                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        Text(
                          cuidador['nome'],
                          style:
                          ListaStyle.nomeCuidador,
                        ),

                        const SizedBox(
                          height: 4,
                        ),

                        Text(
                          cuidador['local'],
                          style:
                          ListaStyle.informacao,
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        Text(
                          cuidador['descricao'],
                          style:
                          ListaStyle.descricao,
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        Row(

                          children: [

                            const Icon(
                              Icons.star,
                              color:
                              ListaStyle.amarelo,
                              size: 18,
                            ),

                            const SizedBox(
                              width: 4,
                            ),

                            Text(
                              cuidador['avaliacao'],
                            ),

                            const Spacer(),

                            Text(
                              cuidador['preco'],
                              style:
                              ListaStyle.preco,
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        Align(

                          alignment:
                          Alignment.centerRight,

                          child: ElevatedButton(

                            style:
                            ListaStyle.botaoDetalhes,

                            onPressed: () {

                              Navigator.push(

                                context,

                                MaterialPageRoute(

                                  builder: (context) {

                                    return DetalhesCuidadores(
                                      cuidador:
                                      cuidador,
                                    );
                                  },
                                ),
                              );
                            },

                            child: const Text(
                              'Detalhes',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}