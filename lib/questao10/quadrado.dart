class Quadrado{
  double lado;
  String caractere;
  Quadrado(this.lado, this.caractere) {
    if (lado <= 0) {
      throw Exception("Lado inválido");
    }
    if (caractere.isEmpty || caractere.length != 1) {
      throw Exception("Caractere inválido");
    }
  }
  double calcularArea() {
    return lado * lado;
  }
  double calcularPerimetro() {
    return 4 * lado;
  }
  void desenhar() {
    int tamanho = lado.toInt();
    for (int i = 0; i < tamanho; i++) {
      print(caractere * tamanho);
    }
  }
  void exibirResumo() {
    print("Lado: $lado");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("----------------------");
  }
  bool ehIgual(Quadrado outro) {
    return lado == outro.lado;
  }
}