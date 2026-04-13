class Lampada {
  bool ligada;
  int quantidadeLigacoes;
  bool queimada;

  Lampada()
      : ligada = false,
        quantidadeLigacoes = 0,
        queimada = false;

  void ligar() {
    if (queimada) {
      print("Não é possível ligar, lâmpada queimada!");
      return;
    }
    if (!ligada) {
      ligada = true;
      quantidadeLigacoes++;

      if (quantidadeLigacoes >= 5) {
        queimada = true;
        ligada = false;
        print("A lâmpada queimou!");
      }
    }
  }

  void desligar() {
    if (!queimada) {
      ligada = false;
    }
  }
  
  void exibirEstado() {
    if (queimada) {
      print("Estado: Queimada");
    } else if (ligada) {
      print("Estado: Ligada");
    } else {
      print("Estado: Desligada");
    }
    print("Quantidade de ligações: $quantidadeLigacoes");
    print("----------------------");
  }
}