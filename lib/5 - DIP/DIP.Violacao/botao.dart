class Lampada {
  void ligar() {}
}

class Ventilador {
  void ligar() {}
}

enum ELETRODOMESTICOS { LAMPADA, VENTILADOR }

class Botao {
  Lampada _lampada;
  Ventilador _ventilador;
  void acionar(ELETRODOMESTICOS eletrodomesticos) {
    if (eletrodomesticos == ELETRODOMESTICOS.LAMPADA) {
      _lampada.ligar();
    }

    if (eletrodomesticos == ELETRODOMESTICOS.VENTILADOR) {
      _ventilador.ligar();
    }
  }
}

main(List<String> args) {
  final botao = Botao();
}
