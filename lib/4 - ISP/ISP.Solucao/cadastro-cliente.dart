import 'cadastro-abstract.dart';

class CadastroCliente extends CadastroAbstract
    with EnvioDeEmail, ValidacaoDados {
  @override
  void enviarEmail() {
    // TODO: implement enviarEmail
  }

  @override
  void salvarBanco() {
    // TODO: implement salvarBanco
  }

  @override
  void validarDados() {
    // TODO: implement validarDados
  }
}
