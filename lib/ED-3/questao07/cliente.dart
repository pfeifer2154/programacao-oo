class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo);

  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  set nome(String v) { if (v.trim().isNotEmpty) _nome = v.trim(); }
  set email(String v) { if (v.trim().isNotEmpty) _email = v.trim(); }
  set saldoCarteira(double v) { if (v >= 0) _saldoCarteira = v; }
  set ativo(bool v) => _ativo = v;

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;
  void adicionarSaldo(double v) { if (v > 0) _saldoCarteira += v; }
  void debitarSaldo(double v) { if (v > 0 && v <= _saldoCarteira) _saldoCarteira -= v; }

  void exibirCliente() {
    print('  Cliente: $_nome | Email: $_email | '
        'Saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)} | '
        'Status: ${_ativo ? "Ativo" : "Inativo"}');
  }
}

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

  set nome(String v) { if (v.trim().isNotEmpty) _nome = v.trim(); }
  set preco(double v) { if (v >= 0) _preco = v; }
  set estoque(int v) { if (v >= 0) _estoque = v; }
  set ativo(bool v) => _ativo = v;

  void exibirProduto() {
    print('  Produto: $_nome | Preço: R\$ ${_preco.toStringAsFixed(2)} | Estoque: $_estoque');
  }
}

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(this._produto, int quantidade)
      : _quantidade = quantidade > 0 ? quantidade : 1;

  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set produto(Produto v) => _produto = v;
  set quantidade(int v) { if (v > 0) _quantidade = v; }

  double calcularSubtotal() => _produto.preco * _quantidade;

  void exibirItem() {
    print('    ${_produto.nome} x$_quantidade = '
        'R\$ ${calcularSubtotal().toStringAsFixed(2)}');
  }
}

class ListaCarrinho {
  final List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) => _itens.add(item);

  void remover(int i) {
    if (i >= 0 && i < _itens.length) _itens.removeAt(i);
  }

  int tamanho() => _itens.length;

  ItemCarrinho? get(int i) =>
      (i >= 0 && i < _itens.length) ? _itens[i] : null;

  List<ItemCarrinho> get todos => List.unmodifiable(_itens);

  void exibirLista() {
    for (var item in _itens) {
      item.exibirItem();
    }
  }
}

class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(Cliente cliente)
      : _cliente = cliente,
        _itens = ListaCarrinho(),
        _aberto = true;

  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  set cliente(Cliente v) => _cliente = v;
  set aberto(bool v) => _aberto = v;

  void adicionarItem(ItemCarrinho item) {
    if (!_aberto) {
      print('Erro: carrinho fechado. Não é possível adicionar itens.');
      return;
    }
    _itens.inserir(item);
    print('Item "${item.produto.nome}" adicionado ao carrinho.');
  }

  void removerItem(int i) {
    if (!_aberto) {
      print('Erro: carrinho fechado.');
      return;
    }
    if (i < 0 || i >= _itens.tamanho()) {
      print('Erro: índice $i inválido.');
      return;
    }
    print('Item "${_itens.get(i)!.produto.nome}" removido do carrinho.');
    _itens.remover(i);
  }

  double calcularTotal() {
    double total = 0;
    for (var item in _itens.todos) {
      total += item.calcularSubtotal();
    }
    return total;
  }

  void exibirCarrinho() {
    print('=== Carrinho ===');
    print('  Cliente:');
    _cliente.exibirCliente();
    print('  Status: ${_aberto ? "Aberto" : "Fechado"}');
    print('  Itens:');
    if (_itens.tamanho() == 0) {
      print('    (vazio)');
    } else {
      _itens.exibirLista();
    }
    print('  Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
  }
}
