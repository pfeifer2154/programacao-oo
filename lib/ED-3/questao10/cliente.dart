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
    print('    Cliente: $_nome | Email: $_email | '
        'Saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)} | '
        '${_ativo ? "Ativo" : "Inativo"}');
  }
}

class ListaCliente {
  final List<Cliente> _clientes = [];

  void inserir(Cliente c) => _clientes.add(c);
  void remover(int i) { if (i >= 0 && i < _clientes.length) _clientes.removeAt(i); }
  int tamanho() => _clientes.length;
  Cliente? get(int i) => (i >= 0 && i < _clientes.length) ? _clientes[i] : null;
  List<Cliente> get todos => List.unmodifiable(_clientes);

  void exibirLista() {
    for (var c in _clientes) { c.exibirCliente(); }
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
    print('    Produto: $_nome | R\$ ${_preco.toStringAsFixed(2)} | '
        'Estoque: $_estoque | ${_ativo ? "Ativo" : "Inativo"}');
  }
}

class ListaProduto {
  final List<Produto> _produtos = [];

  void inserir(Produto p) => _produtos.add(p);
  void remover(int i) { if (i >= 0 && i < _produtos.length) _produtos.removeAt(i); }
  int tamanho() => _produtos.length;
  Produto? get(int i) => (i >= 0 && i < _produtos.length) ? _produtos[i] : null;
  List<Produto> get todos => List.unmodifiable(_produtos);

  void exibirLista() {
    for (var p in _produtos) { p.exibirProduto(); }
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
    print('        ${_produto.nome} x$_quantidade = '
        'R\$ ${calcularSubtotal().toStringAsFixed(2)}');
  }
}

class ListaCarrinho {
  final List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) => _itens.add(item);
  void remover(int i) { if (i >= 0 && i < _itens.length) _itens.removeAt(i); }
  int tamanho() => _itens.length;
  ItemCarrinho? get(int i) => (i >= 0 && i < _itens.length) ? _itens[i] : null;
  List<ItemCarrinho> get todos => List.unmodifiable(_itens);

  void exibirLista() {
    for (var item in _itens) { item.exibirItem(); }
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

  void adicionarItem(ItemCarrinho item) { if (_aberto) _itens.inserir(item); }
  void removerItem(int i) { if (_aberto) _itens.remover(i); }

  double calcularTotal() {
    double total = 0;
    for (var item in _itens.todos) { total += item.calcularSubtotal(); }
    return total;
  }
}

class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(this._codigo, this._percentual, this._ativo);

  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  set codigo(String v) { if (v.trim().isNotEmpty) _codigo = v.trim().toUpperCase(); }
  set percentual(double v) { if (v >= 0 && v <= 100) _percentual = v; }
  set ativo(bool v) => _ativo = v;

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  double calcularDesconto(double valor) =>
      _ativo ? valor * (_percentual / 100) : 0.0;

  void exibirCupom() {
    print('      Cupom: $_codigo | ${_percentual}% | ${_ativo ? "Ativo" : "Inativo"}');
  }
}

class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto? _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  Pedido(String numero, Carrinho carrinho, {CupomDesconto? cupom})
      : _numero = numero,
        _carrinho = carrinho,
        _cupom = cupom,
        _totalBruto = 0.0,
        _totalFinal = 0.0,
        _status = 'aberto';

  String get numero => _numero;
  Carrinho get carrinho => _carrinho;
  CupomDesconto? get cupom => _cupom;
  double get totalBruto => _totalBruto;
  double get totalFinal => _totalFinal;
  String get status => _status;

  set numero(String v) { if (v.trim().isNotEmpty) _numero = v.trim(); }
  set carrinho(Carrinho v) => _carrinho = v;
  set cupom(CupomDesconto? v) => _cupom = v;
  set totalBruto(double v) { if (v >= 0) _totalBruto = v; }
  set totalFinal(double v) { if (v >= 0) _totalFinal = v; }
  set status(String v) {
    const validos = ['aberto', 'fechado', 'cancelado'];
    if (validos.contains(v)) _status = v;
  }

  void fecharPedido() {
    if (_status != 'aberto') { print('Pedido não está aberto.'); return; }
    _totalBruto = _carrinho.calcularTotal();
    double desconto = _cupom != null ? _cupom!.calcularDesconto(_totalBruto) : 0.0;
    _totalFinal = _totalBruto - desconto;
    _status = 'fechado';
    _carrinho.aberto = false;
  }

  void cancelarPedido() {
    if (_status != 'cancelado') _status = 'cancelado';
  }

  void exibirResumoPedido() {
    print('    Pedido: $_numero | Status: $_status');
    print('    Cliente: ${_carrinho.cliente.nome}');
    print('    Itens:');
    _carrinho.itens.exibirLista();
    if (_cupom != null) { _cupom!.exibirCupom(); }
    print('    Total bruto:  R\$ ${_totalBruto.toStringAsFixed(2)}');
    print('    Total final:  R\$ ${_totalFinal.toStringAsFixed(2)}');
  }
}

class Loja {
  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  final List<Pedido> _pedidos;

  Loja(String nome)
      : _nome = nome,
        _clientes = ListaCliente(),
        _produtos = ListaProduto(),
        _pedidos = [];

  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => List.unmodifiable(_pedidos);

  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print('Erro: nome da loja não pode ser vazio.');
      return;
    }
    _nome = valor.trim();
  }

  set clientes(ListaCliente valor) => _clientes = valor;
  set produtos(ListaProduto valor) => _produtos = valor;

  void cadastrarCliente(Cliente cliente) {
    _clientes.inserir(cliente);
    print('Cliente "${cliente.nome}" cadastrado na loja.');
  }

  void cadastrarProduto(Produto produto) {
    _produtos.inserir(produto);
    print('Produto "${produto.nome}" cadastrado na loja.');
  }

  void registrarPedido(Pedido pedido) {
    _pedidos.add(pedido);
    print('Pedido "${pedido.numero}" registrado na loja.');
  }

  void exibirResumoLoja() {
    print('  LOJA: $_nome');
    print('  Clientes (${_clientes.tamanho()}):');
    _clientes.exibirLista();
    print('  Produtos (${_produtos.tamanho()}):');
    _produtos.exibirLista();
    print('  Pedidos (${_pedidos.length}):');
    for (var pedido in _pedidos) {
      pedido.exibirResumoPedido();
    }
    double totalVendas = _pedidos
        .where((p) => p.status == 'fechado')
        .fold(0.0, (soma, p) => soma + p.totalFinal);
    print('  Total em vendas fechadas: R\$ ${totalVendas.toStringAsFixed(2)}');
  }
}