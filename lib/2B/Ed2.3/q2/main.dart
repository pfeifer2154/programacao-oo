import 'lista_generica.dart';

abstract class Exibivel {
  void exibir();
}

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  void exibir() => print(toString());

  @override
  String toString() =>
      'Produto Perecível | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Validade: $dataValidade';
}

class ProdutoEletronico extends Produto implements Exibivel {
  int garantiaMeses;

  ProdutoEletronico(String nome, double preco, this.garantiaMeses)
      : super(nome, preco);

  @override
  void exibir() => print(toString());

  @override
  String toString() =>
      'Produto Eletrônico | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Garantia: $garantiaMeses meses';
}

void main() {
  ListaGenerica<Exibivel> produtos = ListaGenerica<Exibivel>();

  produtos.adicionar(ProdutoPerecivel('Leite', 6.50, '20/05/2026'));
  produtos.adicionar(ProdutoPerecivel('Iogurte', 4.80, '18/05/2026'));
  produtos.adicionar(ProdutoEletronico('Notebook', 3500.00, 24));
  produtos.adicionar(ProdutoEletronico('Smartphone', 2200.00, 12));
  produtos.adicionar(ProdutoPerecivel('Queijo', 28.90, '25/05/2026'));

  print('--- Impressão dos produtos ---');
  produtos.imprimirItens();

  print('\n--- Exibição via interface ---');
  for (var p in produtos.obterItens()) {
    p.exibir();
  }
}