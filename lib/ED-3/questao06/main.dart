import 'listaCarrinho.dart';

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

  set preco(double valor) { if (valor >= 0) _preco = valor; }
  set estoque(int valor) { if (valor >= 0) _estoque = valor; }
  set ativo(bool valor) => _ativo = valor;
  set nome(String valor) { if (valor.trim().isNotEmpty) _nome = valor.trim(); }

  void exibirProduto() {
    print('    Produto: $_nome | Preço: R\$ ${_preco.toStringAsFixed(2)}');
  }
}

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(this._produto, int quantidade)
      : _quantidade = quantidade > 0 ? quantidade : 1;

  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set produto(Produto valor) => _produto = valor;
  set quantidade(int valor) {
    if (valor <= 0) { print('Erro: quantidade inválida.'); return; }
    _quantidade = valor;
  }

  double calcularSubtotal() => _produto.preco * _quantidade;

  void exibirItem() {
    print('  Item: ${_produto.nome} | Qtd: $_quantidade | '
        'Subtotal: R\$ ${calcularSubtotal().toStringAsFixed(2)}');
  }
}

void main() {
  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 89.90, 50, true);
  Produto p3 = Produto('Headset', 250.00, 15, true);

  ListaCarrinho carrinho = ListaCarrinho();
  carrinho.inserir(ItemCarrinho(p1, 1));
  carrinho.inserir(ItemCarrinho(p2, 2));
  carrinho.inserir(ItemCarrinho(p3, 1));

  print('\n=== Carrinho completo ===');
  carrinho.exibirLista();
  print('Total de itens: ${carrinho.tamanho()}');

  print('\n=== Recuperando índice 1 ===');
  carrinho.get(1)?.exibirItem();

  carrinho.remover(0);
  carrinho.remover(99); 

  print('\n=== Carrinho após remoção ===');
  carrinho.exibirLista();
  print('Total de itens: ${carrinho.tamanho()}');
}
