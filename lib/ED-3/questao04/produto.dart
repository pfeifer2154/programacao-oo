import 'main.dart';

class ListaProduto {
  final List<Produto> _produtos = [];

  void inserir(Produto produto) {
    _produtos.add(produto);
    print('Produto "${produto.nome}" inserido.');
  }

  void remover(int i) {
    if (i < 0 || i >= _produtos.length) {
      print('Erro: índice $i inválido para remoção.');
      return;
    }
    print('Produto "${_produtos[i].nome}" removido.');
    _produtos.removeAt(i);
  }

  int tamanho() => _produtos.length;

  Produto? get(int i) {
    if (i < 0 || i >= _produtos.length) {
      print('Erro: índice $i inválido.');
      return null;
    }
    return _produtos[i];
  }

  void exibirLista() {
    if (_produtos.isEmpty) {
      print('  (lista vazia)');
      return;
    }
    for (int i = 0; i < _produtos.length; i++) {
      print('  [$i]');
      _produtos[i].exibirProduto();
    }
  }
}