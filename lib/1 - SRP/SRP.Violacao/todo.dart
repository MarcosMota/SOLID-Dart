import 'package:dio/dio.dart';

class Todo {
  // Entidade
  int id;
  String titulo;
  String descricao;
  bool concluido;

  // Negócio
  Future<String> adicionarTarefa() async {
    Dio dio = Dio();
    Response response;

    // Validação
    if (titulo.length < 10) {
      return "Titulo precisa ter pelo mais de 10 caracteres.";
    }

    // Manipulação de Dados (Repositório)
    if (this.id == 0 || this.id == null) {
      response = await dio.post("http://curso.treeinova.com.br/todo-api/todo",
          data: this);
    } else {
      response = await dio.put(
          "http://curso.treeinova.com.br/todo-api/todo/${this.id}",
          data: this);
    }

    if (response.statusCode == 200) {
      return "Tarefa cadastrado com sucesso!";
    } else {
      return "problemas ao cadastrar tarefa!";
    }
  }
}
