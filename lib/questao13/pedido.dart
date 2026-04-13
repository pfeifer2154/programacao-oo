import '../questao06/produto.dart';

class Pedido {
  int numero;
  List<Produto> itens = [];
  Pedido(this.numero) {
    if (numero <= 0) throw Exception("Número inválido");
  }

  void adicionarProduto(Produto produto) {
    itens.add(produto);
    print("Produto ${produto.nome} adicionado.");
  }

  double calcularTotal() {
    double total = 0;
    for (var p in itens) {
      total += p.precoUnitario;
    }
    return total;
  }

  void exibirPedido() {
    print("Pedido Nº: $numero");

    for (var p in itens) {
      print("- ${p.nome} | R\$ ${p.precoUnitario}");
    }
    print("Total: R\$ ${calcularTotal()}");
    print("----------------------");
  }
}