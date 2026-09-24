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
        ],
      ),
    );
  }
}
