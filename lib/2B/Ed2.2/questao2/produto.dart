class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

abstract interface class Exibivel {
  void exibir();
}

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  void exibir() {
    print('Produto Perecível');
    print('Nome: $nome');
    print('Preço: R\$ $preco');
    print('Data de Validade: $dataValidade');
    print('');
  }
}