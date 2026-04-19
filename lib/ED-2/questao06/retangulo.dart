class Retangulo {
  double _largura;
  double _altura;

  Retangulo(this._largura, this._altura);

  Retangulo.unitario()
      : _largura = 1.0,
        _altura = 1.0;

  Retangulo.quadrado(double lado)
      : _largura = lado,
        _altura = lado;

  double calcularArea() => _largura * _altura;

  double calcularPerimetro() => 2 * (_largura + _altura);

  void exibirDados() {
    print('Largura: $_largura | Altura: $_altura | Área: ${calcularArea()} | Perímetro: ${calcularPerimetro()}');
  }
}