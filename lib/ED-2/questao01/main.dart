import 'lampada.dart';

void main() {
  Lampada lamp = Lampada();

  print('=== Estado inicial ===');
  lamp.exibirEstado();

  lamp.ligar();
  lamp.aumentar();
  lamp.aumentar();
  lamp.exibirEstado();

  lamp.diminuir();
  lamp.exibirEstado();

  lamp.desligar();
  lamp.exibirEstado();
}