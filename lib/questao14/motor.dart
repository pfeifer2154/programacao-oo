class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo);

  void exibirMotor() {
    print("Potência: $potencia");
    print("Tipo: $tipo");
  }
}