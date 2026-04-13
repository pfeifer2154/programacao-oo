class Personagem {
  String nome;
  int vida;
  int ataque;

  Personagem(this.nome, this.vida, this.ataque) {
    if (nome.isEmpty) {
      throw Exception("Nome não pode ser vazio");
    }
    if (vida <= 0) {
      throw Exception("Vida deve ser maior que 0");
    }
    if (ataque <= 0) {
      throw Exception("Ataque deve ser maior que 0");
    }
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print("$nome não pode atacar, está morto.");
      return;
    }

    print("$nome atacou ${inimigo.nome}!");
    inimigo.vida -= ataque;

    if (inimigo.vida < 0) {
      inimigo.vida = 0;
    }
  }

  bool estaVivo() {
    return vida > 0;
  }

  void exibirStatus() {
    print("Nome: $nome | Vida: $vida | Ataque: $ataque");
  }
}