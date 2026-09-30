import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<Map<String, dynamic>> noticias = [
    {
      'titulo': 'Novo aplicativo facilita a rotina dos estudantes',
      'resumo':
          'Ferramenta reúne recursos para organizar tarefas, estudos e compromissos.',
      'categoria': 'Tecnologia',
      'data': '23/09/2026',
    },
    {
      'titulo': 'Mercado de tecnologia apresenta novas oportunidades',
      'resumo':
          'Empresas anunciam novas vagas e programas voltados para profissionais iniciantes.',
      'categoria': 'Carreira',
      'data': '22/09/2026',
    },
    {
      'titulo': 'Feira de livros reúne milhares de visitantes',
      'resumo':
          'Evento literário conta com lançamentos, sessões de autógrafos e diversas atrações.',
      'categoria': 'Cultura',
      'data': '21/09/2026',
    },
    {
      'titulo': 'Novas ferramentas de inteligência artificial são lançadas',
      'resumo':
          'Novas soluções prometem ajudar usuários em tarefas do dia a dia e no trabalho.',
      'categoria': 'Tecnologia',
      'data': '20/09/2026',
    },
    {
      'titulo': 'Projeto incentiva jovens a aprender programação',
      'resumo':
          'Iniciativa oferece cursos gratuitos de programação para estudantes.',
      'categoria': 'Educação',
      'data': '19/09/2026',
    },
  ];

  static final List<String> categorias = [
    "Todas",
    "Tecnologia",
    "Carreira",
    "Cultura",
    "Educação",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/logotipo.png',
          height: 20,
        ),
        centerTitle: true,
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              children: categorias.map((categoria) {
                final selecionada = categoria == "Todas";
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: selecionada
                          ? Colors.black
                          : const Color(0xFFEDEDED),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    categoria,
                    style: const TextStyle(fontSize: 12),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: noticias.length,
              itemBuilder: (context, index) {
                final noticia = noticias[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  elevation: 0,
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Color(0XFFCBD2D9)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        color: const Color(0XFFE4E9EF),
                        child: const Icon(Icons.image_outlined),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFF4F8),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Text(noticia['categoria']),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  noticia['data'],
                                  style: const TextStyle(
                                    color: Color(0Xff19aa5b1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              noticia['titulo'],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1B2A4A),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              noticia['resumo'],
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color(0Xffb5b6b79),
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
