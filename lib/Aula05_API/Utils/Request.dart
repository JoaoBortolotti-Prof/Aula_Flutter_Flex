import 'dart:convert';

import 'package:aula_flutter_flex/Aula05_API/Publicao.dart';
import 'package:http/http.dart' as http;

Future<List<Publicacao>> carregar() async {
  final resposta = await http.get(Uri.https(
    'jsonplaceholder.typicode.com', '/posts',
  )).timeout(const Duration(seconds: 10));

  if(resposta.statusCode != 200){
    throw Exception('HTTP ${resposta.statusCode}');
  }

  final dados = jsonDecode(resposta.body);
  if (dados is! List) throw const FormatException('Formato Invalido');

  return dados.map((item){
    if(item is! Map<String, dynamic>){
      throw const FormatException('Objeto Invalido');
    }
    return Publicacao.fromJson(item);
  }).toList();

}