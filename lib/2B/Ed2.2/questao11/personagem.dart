abstract interface class Atacavel {
  void atacar(Personagem alvo);
}

abstract interface class Magico {
  void lancarMagia(Personagem alvo);
}

abstract interface class Flamejante {
  void soltarFogo(Personagem alvo);
}


abstract class Personagem {
  String nome;
  double vida;
  int nivel;

  Personagem(String nome, double vida, int nivel)
      : nome = nome.isNotEmpty
            ? nome
            : throw ArgumentError('Nome não pode ser vazio'),
        vida = vida >= 0
            ? vida
            : throw ArgumentError('Vida não pode ser negativa'),
        nivel = nivel >= 1
            ? nivel
            : throw ArgumentError('Nível deve ser >= 1');

  void receberDano(double dano) {
    vida -= dano;
    if (vida < 0) vida = 0;
    print('$nome recebeu $dano de dano! Vida restante: $vida');
  }

  bool estaVivo() => vida > 0;

  void exibirStatus();
}


abstract class Combatente extends Personagem implements Atacavel {
  double forca;

  Combatente(String nome, double vida, int nivel, this.forca)
      : super(nome, vida, nivel);
}


class Guerreiro extends Combatente {
  double armadura;

  Guerreiro(String nome, double vida, int nivel, double forca, this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} com força $forca!');
    alvo.receberDano(forca);
  }

  void ataquePesado(Personagem alvo) {
    double dano = forca * 2;
    print('$nome usa Ataque Pesado em ${alvo.nome}! Dano: $dano');
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print('--- Guerreiro: $nome ---');
    print('Vida: $vida | Nível: $nivel | Armadura: $armadura');
    print('Vivo: ${estaVivo()}');
  }
}


class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, double vida, int nivel, double forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas <= 0) {
      print('$nome não tem flechas para atacar!');
      return;
    }
    flechas--;
    print('$nome atira uma flecha em ${alvo.nome}! Flechas restantes: $flechas');
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    print('--- Arqueiro: $nome ---');
    print('Vida: $vida | Nível: $nivel | Flechas: $flechas');
    print('Vivo: ${estaVivo()}');
  }
}


class Mago extends Combatente implements Magico {
  double mana;

  Mago(String nome, double vida, int nivel, double forca, this.mana)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} com cajado! Força: $forca');
    alvo.receberDano(forca);
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana < 10) {
      print('$nome não tem mana suficiente para lançar magia!');
      return;
    }
    double dano = forca + 15;
    mana -= 10;
    print('$nome lança magia em ${alvo.nome}! Dano: $dano | Mana restante: $mana');
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print('--- Mago: $nome ---');
    print('Vida: $vida | Nível: $nivel | Mana: $mana');
    print('Vivo: ${estaVivo()}');
  }
}

abstract class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String nome, double vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);

  void exibirRecompensa();
}


class Goblin extends Inimigo {
  double velocidade;

  Goblin(String nome, double vida, int nivel, double recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    print('--- Goblin: $nome ---');
    print('Vida: $vida | Nível: $nivel | Velocidade: $velocidade');
    print('Vivo: ${estaVivo()}');
  }

  @override
  void exibirRecompensa() {
    print('$nome foi derrotado! Recompensa: $recompensa XP');
  }
}

class Dragao extends Inimigo implements Flamejante {
  double poderDeFogo;

  Dragao(String nome, double vida, int nivel, double recompensa, this.poderDeFogo)
      : super(nome, vida, nivel, recompensa);

  @override
  void soltarFogo(Personagem alvo) {
    print('$nome solta fogo em ${alvo.nome}! Poder de fogo: $poderDeFogo');
    alvo.receberDano(poderDeFogo);
  }

  @override
  void exibirStatus() {
    print('--- Dragão: $nome ---');
    print('Vida: $vida | Nível: $nivel | Poder de Fogo: $poderDeFogo');
    print('Vivo: ${estaVivo()}');
  }

  @override
  void exibirRecompensa() {
    print('$nome foi derrotado! Recompensa: $recompensa XP');
  }
}