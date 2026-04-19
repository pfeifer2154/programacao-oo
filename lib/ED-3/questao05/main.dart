import 'itemCarrinho.dart';

class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(this._nome, this._preco, this._estoque, this._ativo);

  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.trim().isEmpty) return;
    _nome = valor.trim();
  }

  set preco(double valor) {
    if (valor >= 0) _preco = valor;
  }

  set estoque(int valor) {
    if (valor >= 0) _estoque = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void retirarEstoque(int qtd) {
    if (qtd > 0 && qtd <= _estoque) _estoque -= qtd;
  }

  void exibirProduto() {
    print('  Produto: $_nome | Preço: R\$ ${_preco.toStringAsFixed(2)} | Estoque: $_estoque');
  }
}

void main() {
  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 89.90, 50, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 2);
  ItemCarrinho item2 = ItemCarrinho(p2, 3);

  print('=== Itens iniciais ===');
  item1.exibirItem();
  item2.exibirItem();

  print('\n=== Alterando quantidades ===');
  item1.quantidade = 0;  
  item1.quantidade = 1;
  item2.quantidade = 5;

  print('\n=== Estado final ===');
  item1.exibirItem();
  item2.exibirItem();
}
