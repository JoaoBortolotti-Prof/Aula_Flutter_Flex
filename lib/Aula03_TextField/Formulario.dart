import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final nome = TextEditingController();
  String? mensagemErro;
  
  void validarNome(String valor){
    setState(() {
      if(valor.trim().isEmpty){
        mensagemErro = "ERROR401: Failed Requirements!";
      } else if (valor.trim().length < 3) {
        mensagemErro = "Informe ao menos 3 caracteres!";
      } else {
        mensagemErro = null;
      }
    });
  }
  
  void inscrever(){
    validarNome(nome.text);
    
    if(mensagemErro != null) return;

    final texto = nome.text.trim();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Inscrição Realizada: $texto"))
    );

    nome.clear();
    
  }

  @override
  void dispose(){
    nome.dispose();
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de Inscrição"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: nome,
              decoration: InputDecoration(
                labelText: "Nome Completo",
                errorText: mensagemErro,
                border: const OutlineInputBorder()
              ),
              onChanged: validarNome,
            ),
            FilledButton(
              onPressed: inscrever, 
              child: Text("Inscrever")
            )
          ],
        ),
      ),
    );
  }
}
