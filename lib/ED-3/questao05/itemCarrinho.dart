import 'main.dart';

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(Produto produto, int quantidade)
      : _produto = produto,
        _quantidade = quantidade > 0 ? quantidade : 1;

  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set produto(Produto valor) => _produto = valor;

  set quantidade(int valor) {
    if (valor <= 0) {
      print('Erro: quantidade deve ser maior que zero.');
      return;
    }
    _quantidade = valor;
  }

  double calcularSubtotal() => _produto.preco * _quantidade;

  void exibirItem() {
    print('Item: ${_produto.nome} | Qtd: $_quantidade | '
        'Preço unit.: R\$ ${_produto.preco.toStringAsFixed(2)} | '
        'Subtotal: R\$ ${calcularSubtotal().toStringAsFixed(2)}');
  }
}