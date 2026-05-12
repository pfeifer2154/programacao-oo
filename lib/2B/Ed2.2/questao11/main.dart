import 'personagem.dart';

void main() {
  
  Guerreiro thoran = Guerreiro('Thoran', 100, 5, 20, 15);
  Arqueiro lia = Arqueiro('Lia', 80, 4, 18, 10);
  Mago merlin = Mago('Merlin', 70, 6, 25, 50);
  Goblin gob = Goblin('Gob', 40, 2, 30, 12);
  Dragao ignis = Dragao('Ignis', 200, 10, 500, 35);

  print('========== COMBATE ==========');
  thoran.atacar(gob);
  print('');
  lia.atacar(gob);
  print('');
  merlin.lancarMagia(ignis);
  print('');
  ignis.soltarFogo(thoran);

  print('\n========== STATUS FINAL ==========');
  thoran.exibirStatus();
  print('');
  lia.exibirStatus();
  print('');
  merlin.exibirStatus();
  print('');
  gob.exibirStatus();
  print('');
  ignis.exibirStatus();

  print('\n========== RECOMPENSAS ==========');
  List<Inimigo> inimigos = [gob, ignis];
  for (var inimigo in inimigos) {
    if (!inimigo.estaVivo()) {
      inimigo.exibirRecompensa();
    }
  }
}