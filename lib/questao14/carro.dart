import 'motor.dart';

class Carro {
  String modelo;
  Motor motor;

  Carro(this.modelo, this.motor);

  void exibirCarro() {
    print("Modelo: $modelo");
    motor.exibirMotor();
    print("------------------");
  }
}