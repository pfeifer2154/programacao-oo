import 'lista_generica.dart';

abstract class Atacavel {
  void atacar();
}

abstract class Magico {
  void lancarMagia();
}

abstract class Flamejante {
  void soltarFogo();
}

abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel);

  void receberDano(int dano) {
    vida -= dano;
    if (vida < 0) vida = 0;
  }

  bool estaVivo() => vida > 0;

  void exibirStatus() => print(toString());

  @override
  String toString();
}

abstract class Combatente extends Personagem implements Atacavel {
  Combatente(String nome, int vida, int nivel) : super(nome, vida, nivel);
}

abstract class Inimigo extends Personagem {
  int recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);
}

class Guerreiro extends Combatente {
  int forca;
  int armadura;

  Guerreiro(String nome, int vida, int nivel, this.forca, this.armadura)
      : super(nome, vida, nivel);

  @override
  void atacar() => print('$nome ataca com força $forca! ⚔️');

  @override
  String toString() =>
      'Guerreiro | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Armadura: $armadura';
}

class Arqueiro extends Combatente {
  int forca;
  int flechas;

  Arqueiro(String nome, int vida, int nivel, this.forca, this.flechas)
      : super(nome, vida, nivel);

  @override
  void atacar() => print('$nome atira uma flecha! Força: $forca | Flechas restantes: ${--flechas} 🏹');

  @override
  String toString() =>
      'Arqueiro | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Flechas: $flechas';
}

class Mago extends Combatente implements Magico {
  int forca;
  int mana;

  Mago(String nome, int vida, int nivel, this.forca, this.mana)
      : super(nome, vida, nivel);

  @override
  void atacar() => print('$nome golpeia com o cajado! Força: $forca 🪄');

  @override
  void lancarMagia() => print('$nome lança uma magia poderosa! Mana consumida: 10 | Mana restante: ${mana - 10} ✨');

  @override
  String toString() =>
      'Mago | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Mana: $mana';
}

class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  String toString() =>
      'Goblin | Nome: $nome | Vida: $vida | Nível: $nivel | Recompensa: $recompensa XP | Velocidade: $velocidade';
}

class Dragao extends Inimigo implements Flamejante {
  int poderFogo;

  Dragao(String nome, int vida, int nivel, int recompensa, this.poderFogo)
      : super(nome, vida, nivel, recompensa);

  @override
  void soltarFogo() => print('$nome solta chamas com poder $poderFogo! 🔥');

  @override
  String toString() =>
      'Dragão | Nome: $nome | Vida: $vida | Nível: $nivel | Recompensa: $recompensa XP | Poder de Fogo: $poderFogo';
}

void main() {
  
  var thoran = Guerreiro('Thoran', 120, 5, 20, 15);
  var lia    = Arqueiro('Lia', 80, 4, 15, 10);
  var merlin = Mago('Merlin', 70, 6, 10, 50);
  var gob    = Goblin('Gob', 40, 2, 100, 25);
  var ignis  = Dragao('Ignis', 200, 10, 1000, 35);

  ListaGenerica<Atacavel>   combatentes  = ListaGenerica<Atacavel>();
  ListaGenerica<Magico>     magicos      = ListaGenerica<Magico>();
  ListaGenerica<Flamejante> flamejantes  = ListaGenerica<Flamejante>();
  ListaGenerica<Personagem> personagens  = ListaGenerica<Personagem>();

  combatentes.adicionar(thoran);
  combatentes.adicionar(lia);
  combatentes.adicionar(merlin);

  magicos.adicionar(merlin);

  flamejantes.adicionar(ignis);

  personagens.adicionar(thoran);
  personagens.adicionar(lia);
  personagens.adicionar(merlin);
  personagens.adicionar(gob);
  personagens.adicionar(ignis);

  print('=== Estado inicial dos personagens ===');
  personagens.imprimirItens();

  print('\n=== Combatentes atacando ===');
  for (var c in combatentes.obterItens()) {
    c.atacar();
  }

  print('\n=== Mágicos lançando magia ===');
  for (var m in magicos.obterItens()) {
    m.lancarMagia();
  }

  print('\n=== Flamejantes soltando fogo ===');
  for (var f in flamejantes.obterItens()) {
    f.soltarFogo();
  }

  print('\n=== Simulando dano ===');
  gob.receberDano(40);
  print('Gob recebeu 40 de dano. Vivo? ${gob.estaVivo()}');

  print('\n=== Estado final dos personagens ===');
  personagens.imprimirItens();
}
