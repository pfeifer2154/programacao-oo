import 'main.dart';

class ListaCarrinho {
  final List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) {
    _itens.add(item);
    print('Item "${item.produto.nome}" adicionado ao carrinho.');
  }

  void remover(int i) {
    if (i < 0 || i >= _itens.length) {
      print('Erro: índice $i inválido para remoção.');
      return;
    }
    print('Item "${_itens[i].produto.nome}" removido do carrinho.');
    _itens.removeAt(i);
  }

  int tamanho() => _itens.length;

  ItemCarrinho? get(int i) {
    if (i < 0 || i >= _itens.length) {
      print('Erro: índice $i inválido.');
      return null;
    }
    return _itens[i];
  }

  void exibirLista() {
    if (_itens.isEmpty) {
      print('  (carrinho vazio)');
      return;
    }
    for (int i = 0; i < _itens.length; i++) {
      print('  [$i]');
      _itens[i].exibirItem();
    }
  }
}