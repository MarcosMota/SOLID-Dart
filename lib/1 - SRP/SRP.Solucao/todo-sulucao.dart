import 'package:dio/dio.dart';

// Entidade
class Todo {
  int id;
  String titulo;
  String descricao;
  bool concluido;
}

// Manipulação de Dados
class TodoRepositorio {
  Future<bool> salvar(Todo todo) async {
    Dio dio = Dio();
    Response response;
    if (todo.id == 0 || todo.id == null) {
      response = await dio.post("http://curso.treeinova.com.br/todo-api/todo",
          data: todo);
    } else {
      response = await dio.put(
          "http://curso.treeinova.com.br/todo-api/todo/${todo.id}",
          data: this);
    }

    return response.statusCode == 200;
  }
}

// Validação
class TodoValidacao {
  static bool validarTitulo(Todo todo) {
    return todo.titulo.length > 10;
  }
}

// Negócio
class TodoServico {
  Future<String> adicionarTarefa(Todo todo) async {
    TodoRepositorio todoRepositorio = TodoRepositorio();
    // Validação
    if (!TodoValidacao.validarTitulo(todo)) {
      return "Titulo precisa ter pelo mais de 10 caracteres.";
    }

    // Manipulação de Dados (Repositório)
    bool resultado = await todoRepositorio.salvar(todo);

    if (resultado) {
      return "Tarefa cadastrado com sucesso!";
    } else {
      return "problemas ao cadastrar tarefa!";
    }
  }
}
