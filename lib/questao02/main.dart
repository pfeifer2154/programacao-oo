import 'relogio.dart';

void main() {
  var r1 = Relogio(10, 20, 30);
  var r2 = Relogio(23, 59, 59);
  var r3 = Relogio(0, 5, 9);
  r1.exibirHorario();
  r2.exibirHorario();
  r3.exibirHorario();
}