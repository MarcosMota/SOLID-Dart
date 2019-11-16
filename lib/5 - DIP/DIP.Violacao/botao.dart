class Lampada {
  void ligar() {}
}

class Botao {
  Lampada _lampada;
  void acionar() {
    _lampada.ligar();
  }
}
