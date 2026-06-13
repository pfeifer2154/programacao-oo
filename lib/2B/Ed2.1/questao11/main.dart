import 'personagem.dart';

void main() {
  var thoran = Guerreiro('Thoran', 120, 5, 20, 30);
  var lia = Arqueiro('Lia', 90, 4, 15, 3);
  var merlin = Mago('Merlin', 80, 6, 10, 50);
  var gob = Goblin('Gob', 60, 2, 25, 12);
  var ignis = Dragao('Ignis', 200, 10, 500, 35);
 
  print('BATALHA\n');
 
  thoran.atacar(gob);        
  lia.atacar(gob);         
  merlin.lancarMagia(ignis); 
  ignis.soltarFogo(thoran);  
 
  print('\nSTATUS FINAL\n');
  thoran.exibirStatus();
  print('');
  lia.exibirStatus();
  print('');
  merlin.exibirStatus();
  print('');
  gob.exibirStatus();
  gob.exibirRecompensa();
  print('');
  ignis.exibirStatus();
  ignis.exibirRecompensa();
}