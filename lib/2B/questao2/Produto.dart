class Produto {
  String nome;
  double preco;
 
  Produto(this.nome, this.preco);
 
  void exibir() {
    print('Produto: $nome');
    print('Preço: R\$ $preco');
  }
}

class ProdutoPerecivel extends Produto {
  String dataValidade;
 
  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);
 
  @override
  void exibir() {
    super.exibir();
    print('Validade: $dataValidade');
  }
}