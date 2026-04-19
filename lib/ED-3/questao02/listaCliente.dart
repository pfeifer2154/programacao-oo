import 'main.dart';

class ListaCliente {
  final List<Cliente> _clientes = [];

  void inserir(Cliente cliente) {
    _clientes.add(cliente);
    print('Cliente "${cliente.nome}" inserido.');
  }

  void remover(int i) {
    if (i < 0 || i >= _clientes.length) {
      print('Erro: índice $i inválido para remoção.');
      return;
    }
    print('Cliente "${_clientes[i].nome}" removido.');
    _clientes.removeAt(i);
  }

  int tamanho() => _clientes.length;

  Cliente? get(int i) {
    if (i < 0 || i >= _clientes.length) {
      print('Erro: índice $i inválido.');
      return null;
    }
    return _clientes[i];
  }

  void exibirLista() {
    if (_clientes.isEmpty) {
      print('  (lista vazia)');
      return;
    }
    for (int i = 0; i < _clientes.length; i++) {
      print('  [$i]');
      _clientes[i].exibirCliente();
    }
  }
}