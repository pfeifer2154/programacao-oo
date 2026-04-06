class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hp;

  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp) {
    if (nome.isEmpty) {
      throw Exception("Nome não pode ser vazio");
    }
    if (tipo.isEmpty) {
      throw Exception("Tipo não pode ser vazio");
    }
    if (nivel < 1 || nivel > 100) {
      throw Exception("Nível deve estar entre 1 e 100");
    }
    if (hp <= 0) {
      throw Exception("HP deve ser maior que 0");
    }
  }

  void exibirPokemon() {
    print("#$numero - $nome ($tipo) | Nível: $nivel | HP: $hp");
  }
}