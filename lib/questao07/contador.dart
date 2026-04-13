class Contador {
  int valor;
  Contador(this.valor){
    if (valor < 0) {
      throw Exception("Valor inicial deve ser maior ou igual a 0");
    }
  }

  void incrementar() {
    valor++;
  }

  void decrementar() {
    if (valor > 0) {
      valor--;
    }
  }

  void zerar() {
    valor = 0;
  }

  void exibirValor() {
    print("Valor atual: $valor");
  }
}