class Personagem {
  late String _nome;
  late double _vida;
  late int _nivel;
 
  Personagem(String nome, double vida, int nivel) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome não pode ser vazio.');
    }
    if (vida < 0) {
      throw ArgumentError('A vida não pode ser negativa.');
    }
    if (nivel < 1) {
      throw ArgumentError('O nível deve ser maior ou igual a 1.');
    }
    _nome = nome;
    _vida = vida;
    _nivel = nivel;
  }
 
  String get nome => _nome;
  double get vida => _vida;
  int get nivel => _nivel;
 
  void exibirStatus() {
    print('Nome: $_nome | Vida: $_vida | Nível: $_nivel');
  }
 
  void receberDano(double dano) {
    _vida -= dano;
    if (_vida < 0) {
      _vida = 0; 
    }
    print('$_nome recebeu $dano de dano. Vida atual: $_vida');
  }
 
  bool estaVivo() {
    return _vida > 0;
  }
}
 
class Combatente extends Personagem {
  double forca;
 
  Combatente(String nome, double vida, int nivel, this.forca)
      : super(nome, vida, nivel);
 
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome}!');
    alvo.receberDano(forca);
  }
}
 
class Guerreiro extends Combatente {
  double armadura;
 
  Guerreiro(String nome, double vida, int nivel, double forca, this.armadura)
      : super(nome, vida, nivel, forca);
 
  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Armadura: $armadura');
  }
 
  void ataquePesado(Personagem alvo) {
    print('$nome usa ATAQUE PESADO em ${alvo.nome}!');
    alvo.receberDano(forca * 2);
  }
}
 
class Arqueiro extends Combatente {
  int flechas;
 
  Arqueiro(String nome, double vida, int nivel, double forca, this.flechas)
      : super(nome, vida, nivel, forca);
 
  @override
  void atacar(Personagem alvo) {
    if (flechas >= 1) {
      flechas--;
      print('$nome dispara uma flecha em ${alvo.nome}! '
          '(flechas restantes: $flechas)');
      alvo.receberDano(forca);
    } else {
      print('$nome não pode atacar: está sem flechas!');
    }
  }
}
 
class Mago extends Combatente {
  double mana;
 
  Mago(String nome, double vida, int nivel, double forca, this.mana)
      : super(nome, vida, nivel, forca);
 
  void lancarMagia(Personagem alvo) {
    if (mana >= 10) {
      mana -= 10;
      print('$nome lança uma magia em ${alvo.nome}! (mana restante: $mana)');
      alvo.receberDano(forca + 15);
    } else {
      print('$nome não tem mana suficiente para lançar magia!');
    }
  }
}
 
class Inimigo extends Personagem {
  double recompensa;
 
  Inimigo(String nome, double vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);
 
  void exibirRecompensa() {
    print('Ao derrotar $nome, a recompensa é de $recompensa moedas de ouro.');
  }
}
 
class Goblin extends Inimigo {
  double velocidade;
 
  Goblin(String nome, double vida, int nivel, double recompensa,
      this.velocidade)
      : super(nome, vida, nivel, recompensa);
 
  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Velocidade: $velocidade');
  }
}
 
class Dragao extends Inimigo {
  double poderDeFogo;
 
  Dragao(String nome, double vida, int nivel, double recompensa,
      this.poderDeFogo)
      : super(nome, vida, nivel, recompensa);
 
  void soltarFogo(Personagem alvo) {
    print('$nome solta FOGO em ${alvo.nome}!');
    alvo.receberDano(poderDeFogo);
  }
}