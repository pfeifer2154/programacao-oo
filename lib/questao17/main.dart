import 'semaforo.dart';

void main() {
  var semaforo = Semaforo("vermelho");

  for (int i = 0; i < 15; i++) {
    semaforo.exibirEstado();
    semaforo.reduzirTempo();
  }
}