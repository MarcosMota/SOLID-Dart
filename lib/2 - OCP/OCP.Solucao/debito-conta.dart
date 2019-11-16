import 'package:solid/2%20-%20OCP/OCP.Violacao/tipo-conta.dart';

abstract class DebitoConta {
    void debitar(double valor, String conta){
        // ashsdahsb
    }
}


class ContaCorrente extends DebitoConta{
  @override
  void debitar(double valor, String conta) {
    // TODO: implement debitar
  }

}

class ContaPoupanca extends DebitoConta{
  @override
  void debitar(double valor, String conta) {
    // TODO: implement debitar
  }
}

class ContaInvestimento extends DebitoConta{
  @override
  void debitar(double valor, String conta) {
    // TODO: implement debitar
  }
}


main(){
    DebitoConta conta1 = ContaCorrente();
    DebitoConta conta2 = ContaPoupanca();
    DebitoConta conta3 = ContaInvestimento();

    conta1.debitar(valor, conta)
}
// class DebitoConta {
//   void debitar(double valor, String conta, TipoConta tipoConta) {
//     if (tipoConta == TipoConta.Corrente) {
//       // Debita Conta Corrente
//     }

//     if (tipoConta == TipoConta.Poupanca) {
//       // Valida Aniversário da Conta
//       // Debita Conta Poupança
//     }
//   }
// }
