import 'package:solid/2%20-%20OCP/OCP.Violacao/tipo-conta.dart';

class DebitoConta {
  void debitar(double valor, String conta, TipoConta tipoConta) {
    if (tipoConta == TipoConta.Corrente) {
      // Debita Conta Corrente
    }

    if (tipoConta == TipoConta.Poupanca) {
      // Valida Aniversário da Conta
      // Debita Conta Poupança
    }
  }
}
