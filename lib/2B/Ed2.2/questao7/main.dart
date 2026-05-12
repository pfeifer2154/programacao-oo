import 'animal.dart';

void main() {
  List<Animal> animais = [
    Cachorro('Rex'),
    Gato('Mimi'),
    Passaro('Piu'),
    Vaca('Mimosa'),
  ];

  for (var animal in animais) {
    animal.emitirSom();
  }
}