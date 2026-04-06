import 'dart:math';

class Triangulo {
  double lado1;
  double lado2;
  double lado3;
  String caractere;

  Triangulo(this.lado1, this.lado2, this.lado3, this.caractere) {
    if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
      throw Exception("Lados inválidos");
    }

    if (lado1 + lado2 <= lado3 ||
        lado1 + lado3 <= lado2 ||
        lado2 + lado3 <= lado1) {
      throw Exception("Não forma um triângulo válido");
    }

    if (caractere.isEmpty || caractere.length != 1) {
      throw Exception("Caractere inválido");
    }
  }

  double calcularPerimetro() {
    return lado1 + lado2 + lado3;
  }

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
  }

  void desenharEsquerda() {
    int altura = lado1.toInt();

    for (int i = 1; i <= altura; i++) {
      print(caractere * i);
    }
  }

  void desenharCentralizado() {
    int altura = lado1.toInt();

    for (int i = 1; i <= altura; i++) {
      String espacos = " " * (altura - i);
      print(espacos + (caractere * i));
    }
  }

  void exibirResumo() {
    print("Lados: $lado1, $lado2, $lado3");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("----------------------");
  }

  void setLados(double l1, double l2, double l3) {
    if (l1 > 0 && l2 > 0 && l3 > 0) {
      lado1 = l1;
      lado2 = l2;
      lado3 = l3;
    }
  }
}