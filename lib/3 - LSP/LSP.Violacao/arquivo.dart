abstract class Arquivo {}

class ArquivoDocx extends Arquivo {
  void gerarDocx() {
    // Gerar arquivo
  }
}

class ArquivoPDF extends Arquivo {
  void gerarPDF() {
    // Gerar arquivo
  }
}

class GeradorDeArquivos {
  void GerarArquivos(List<Arquivo> arquivos) {
    for (var arquivo in arquivos) {
      if (arquivo is ArquivoDocx) {
        arquivo.gerarDocx();
      }
      if (arquivo is ArquivoPDF) {
        arquivo.gerarPDF();
      }
    }
  }
}
