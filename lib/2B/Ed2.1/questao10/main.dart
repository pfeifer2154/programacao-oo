import 'dispositivo.dart';

void main() {
  var dispositivo = Dispositivo('LG', 'Smart TV 50"');
  var smartphone = Smartphone('Samsung', 'Galaxy S25', 'Android 16');
 
  dispositivo.ligar();
  smartphone.ligar();
}