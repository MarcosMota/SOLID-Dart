abstract class Eletrodomestico {
  void ligar() {}
}

class Lampada extends Eletrodomestico {
  void ligar() {}
}

class Ventiladors extends Eletrodomestico {
  void ligar() {}
}

class Cafeteira extends Eletrodomestico {
  void ligar() {}
}

class Botao {
  Eletrodomestico _eletrodomestico;
  Botao(this._eletrodomestico);

  void acionar() {
    _eletrodomestico.ligar();
  }
}

main(List<String> args) {
  final botao = Botao(Lampada());
  botao.acionar();

  final botao1 = Botao(Ventiladors());
  botao1.acionar();

  final botao2 = Botao(Cafeteira());
  botao2.acionar();
}
