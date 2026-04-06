import 'lampada.dart';

void main() {
  var lampada = Lampada();

  for (int i = 0; i < 6; i++) {
    lampada.ligar();
    lampada.exibirEstado();
    lampada.desligar();
  }
}