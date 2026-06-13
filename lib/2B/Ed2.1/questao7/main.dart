import 'animal.dart';

void main() {
  var cachorro = Cachorro('Rex');
  var gato = Gato('Mimi');
  var passaro = Passaro('Loro');
 
  List<Animal> animais = [cachorro, gato, passaro];
  for (var animal in animais) {
    animal.emitirSom();
  }
}