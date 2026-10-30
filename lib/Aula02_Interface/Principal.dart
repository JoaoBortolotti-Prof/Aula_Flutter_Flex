import 'package:aula_flutter_flex/Aula02_Interface/Perfil.dart';
import 'package:flutter/material.dart';


class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Perfil(),
    );
  }
}
