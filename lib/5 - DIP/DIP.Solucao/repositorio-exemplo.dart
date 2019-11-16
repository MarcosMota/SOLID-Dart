abstract class Repositorio {
  void salvar();
}

class RepositorioSQLLite extends Repositorio {
  @override
  void salvar() {
    // TODO: implement salvar
  }
}

class RepositorioAPI extends Repositorio {
  @override
  void salvar() {
    // TODO: implement salvar
  }
}

class ContatoServico {
  final Repositorio _repositorio;

  ContatoServico(this._repositorio);

  void salvar() {
    _repositorio.salvar();
  }
}

main(List<String> args) {
  final config = 'LOCAL';

  Repositorio repositorio;
  if (config == 'LOCAL') {
    repositorio = RepositorioSQLLite();
  } else {
    repositorio = RepositorioAPI();
  }
  final contato = ContatoServico(repositorio);

  contato.salvar();
}
