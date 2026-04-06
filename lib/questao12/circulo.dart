import 'dart:math';

class Circulo {
  double raio;

  Circulo(this.raio) {
    if (raio <= 0) {
      throw Exception("Raio inválido");
    }
  }

  double calcularArea() {
    return pi * raio * raio;
  }

  double calcularCircunferencia() {
    return 2 * pi * raio;
  }

  void exibirDados() {
    print("Raio: $raio");
    print("Área: ${calcularArea()}");
    print("Circunferência: ${calcularCircunferencia()}");
    print("----------------------");
  }
}