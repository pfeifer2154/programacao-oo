class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) {
    if (nome.isEmpty) {
      throw Exception("Nome não pode ser vazio");
    }
    if (idade < 0) {
      throw Exception("Idade deve ser maior ou igual a 0");
    }
  }

  void exibirDados() {
    print("Nome: $nome | Idade: $idade");
  }
}