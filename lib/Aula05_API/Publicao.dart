class Publicacao{
  // Construtor
  const Publicacao(this.id, this.titulo);

  // Atributos
  final int id;
  final String titulo;

  // 'id' ou 'title'
  // tipo do metodo - nome do metodo - parametros - implementacao
  factory Publicacao.fromJson (Map<String, dynamic> json){
    final id = json['id'];
    final titulo = json['title'];

    if(id is! int || titulo is! String){
      throw const FormatException('Publicação Inválida');
    }

    return Publicacao(id, titulo);
  }


}