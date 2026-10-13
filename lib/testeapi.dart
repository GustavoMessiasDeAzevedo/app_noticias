import 'package:app_noticias/model/noticia.dart';
import 'package:app_noticias/service/noticias_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TesteApi extends StatefulWidget {
  const TesteApi({super.key});

  @override
  State<TesteApi> createState() => _TesteApiState();
}

class _TesteApiState extends State<TesteApi> {
  String mensagem = "Toque para testar";

  final NoticiasService _noticiaService = NoticiasService();

  late Future<List<Noticia>> _listaNoticias;

  Future<void> carregarNoticias() async {
    _listaNoticias = _noticiaService.getNoticias();

    List<Noticia> noticias = await _listaNoticias;

    print('---Teste no console---');
    print('Quantidade de noticias: ${noticias.length}');
  }

  Future<void> testar() async {
    try {
      final resposta = await http.get(
        Uri.parse('http://10.0.2.2:8000/api/noticias'),
      );

      if (resposta.statusCode == 200) {
        mensagem = 'Conectou com Sucesso';
      } else {
        mensagem = 'Api respondeu com erro ${resposta.statusCode}';
      }
    } catch (erro) {
      mensagem = 'Não conectou erro: $erro';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: testar, child: const Text("Testar api")),
            const SizedBox(
              height: 16,
            ),
            Text(mensagem),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: carregarNoticias,
              child: const Text('Carregar noticias'),
            ),
          ],
        ),
      ),
    );
  }
}
