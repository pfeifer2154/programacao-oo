import 'personagem.dart';

void main() {
  var p1 = Personagem("Guerreiro", 100, 20);
  var p2 = Personagem("Orc", 80, 15);

  p1.exibirStatus();
  p2.exibirStatus();
  print("----------------");

  while (p1.estaVivo() && p2.estaVivo()) {
    p1.atacar(p2);
    p2.exibirStatus();
    if (!p2.estaVivo()) break;

    p2.atacar(p1);
    p1.exibirStatus();
    print("----------------");
  }
  print("Combate encerrado!");
}