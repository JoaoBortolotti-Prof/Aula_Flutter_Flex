import 'package:aula_flutter_flex/Aula05_API/Mural.dart';
import 'package:flutter/material.dart';

class Aula05 extends StatelessWidget {
  const Aula05({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mural(),
    );
  }
}
