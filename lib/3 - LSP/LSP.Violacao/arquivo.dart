abstract class Imprimivel {
  void imprimir();
}

abstract class Arquivo {
  void gerarDocumento();
}

class ArquivoDocx extends Arquivo with Imprimivel {
  @override
  void gerarDocumento() {
    // TODO: implement gerarDocumento
  }

  @override
  void imprimir() {
    // TODO: implement imprimir
  }
}

class ArquivoPDF extends Arquivo with Imprimivel {
  @override
  void gerarDocumento() {
    // TODO: implement gerarDocumento
  }

  @override
  void imprimir() {
    // TODO: implement imprimir
  }
}

class ArquivoTXT extends Arquivo {
  @override
  void gerarDocumento() {
    // TODO: implement gerarDocumento
  }
}

class ArquivoCSV extends Arquivo {
  @override
  void gerarDocumento() {
    // TODO: implement gerarDocumento
  }
}

class GeradorDeArquivos {
  void GerarArquivos(List<Arquivo> arquivos) {
    for (var arquivo in arquivos) {
      arquivo.gerarDocumento();
      if (arquivo is Imprimivel) {
        (arquivo as Imprimivel).imprimir();
      }
    }
  }
}
