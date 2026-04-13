import 'carro.dart';
import 'motor.dart';

void main() {
  var m1 = Motor(150, "Gasolina");
  var m2 = Motor(200, "Diesel");
  var c1 = Carro("Civic", m1);
  var c2 = Carro("Hilux", m2);
  c1.exibirCarro();
  c2.exibirCarro();
}