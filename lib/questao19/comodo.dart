class Comodo {
  String nome;
  double tamanho;

  Comodo(this.nome, this.tamanho) {
    if (nome.isEmpty) {
      throw Exception("Nome do cômodo não pode ser vazio");
    }
    if (tamanho <= 0) {
      throw Exception("Tamanho deve ser maior que 0");
    }
  }

  void exibirComodo() {
    print("Cômodo: $nome | Tamanho: ${tamanho}m²");
  }
}