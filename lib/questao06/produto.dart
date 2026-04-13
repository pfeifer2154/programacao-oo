class Produto {
  int codigo;
  String nome;
  double precoUnitario;
  int quantidade;

  Produto(this.codigo, this.nome, this.precoUnitario, this.quantidade) {
    if (codigo <= 0) {
      throw Exception("Código inválido");
    }
    if (nome.isEmpty) {
      throw Exception("Nome inválido");
    }
    if (precoUnitario <= 0) {
      throw Exception("Preço inválido");
    }
    if (quantidade <= 0) {
      throw Exception("Quantidade inválida");
    }
  }

  double calcularDesconto() {
    double total = precoUnitario * quantidade;
    if (quantidade >= 20) return total * 0.15;
    if (quantidade >= 10) return total * 0.10;
    if (quantidade >= 5) return total * 0.05;
    return 0;
  }
  
  double calcularTotal() {
    return (precoUnitario * quantidade) - calcularDesconto();
  }

  void exibirResumo() {
    print("Código: $codigo");
    print("Nome: $nome");
    print("Preço unitário: $precoUnitario");
    print("Quantidade: $quantidade");
    print("Desconto: ${calcularDesconto()}");
    print("Total: ${calcularTotal()}");
    print("----------------------");
  }
}