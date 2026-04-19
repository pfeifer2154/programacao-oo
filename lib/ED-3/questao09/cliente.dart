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
    print('    Cliente: $_nome | Email: $_email');
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
    print('      ${_produto.nome} x$_quantidade = '
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

  void adicionarItem(ItemCarrinho item) {
    if (_aberto) _itens.inserir(item);
  }

  void removerItem(int i) {
    if (_aberto && i >= 0 && i < _itens.tamanho()) _itens.remover(i);
  }

  double calcularTotal() {
    double total = 0;
    for (var item in _itens.todos) { total += item.calcularSubtotal(); }
    return total;
  }

  void exibirCarrinho() {
    print('  Carrinho de: ${_cliente.nome}');
    _itens.exibirLista();
    print('  Total bruto: R\$ ${calcularTotal().toStringAsFixed(2)}');
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

  double calcularDesconto(double valor) {
    if (!_ativo) return 0.0;
    return valor * (_percentual / 100);
  }

  void exibirCupom() {
    print('  Cupom: $_codigo | ${_percentual}% | ${_ativo ? "Ativo" : "Inativo"}');
  }
}

class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto? _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  static const _statusValidos = ['aberto', 'fechado', 'cancelado'];

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

  set numero(String valor) {
    if (valor.trim().isEmpty) {
      print('Erro: número do pedido não pode ser vazio.');
      return;
    }
    _numero = valor.trim();
  }

  set carrinho(Carrinho valor) => _carrinho = valor;

  set cupom(CupomDesconto? valor) => _cupom = valor;

  set totalBruto(double valor) {
    if (valor < 0) { print('Erro: total bruto não pode ser negativo.'); return; }
    _totalBruto = valor;
  }

  set totalFinal(double valor) {
    if (valor < 0) { print('Erro: total final não pode ser negativo.'); return; }
    _totalFinal = valor;
  }

  set status(String valor) {
    if (!_statusValidos.contains(valor)) {
      print('Erro: status "$valor" inválido. Use: ${_statusValidos.join(", ")}');
      return;
    }
    _status = valor;
  }

  void fecharPedido() {
    if (_status != 'aberto') {
      print('Pedido $_numero não está aberto (status: $_status).');
      return;
    }
    _totalBruto = _carrinho.calcularTotal();
    double desconto = _cupom != null ? _cupom!.calcularDesconto(_totalBruto) : 0.0;
    _totalFinal = _totalBruto - desconto;
    _status = 'fechado';
    _carrinho.aberto = false;
    print('Pedido $_numero fechado com sucesso.');
  }

  void cancelarPedido() {
    if (_status == 'cancelado') {
      print('Pedido $_numero já está cancelado.');
      return;
    }
    _status = 'cancelado';
    print('Pedido $_numero cancelado.');
  }

  void exibirResumoPedido() {
    print('  Pedido: $_numero | Status: $_status');
    print('  Itens:');
    _carrinho.itens.exibirLista();
    if (_cupom != null) {
      print('  Cupom aplicado:');
      _cupom!.exibirCupom();
    }
    print('  Total bruto:  R\$ ${_totalBruto.toStringAsFixed(2)}');
    if (_cupom != null && _cupom!.ativo) {
      double desc = _cupom!.calcularDesconto(_totalBruto);
      print('  Desconto:    -R\$ ${desc.toStringAsFixed(2)}');
    }
    print('  Total final:  R\$ ${_totalFinal.toStringAsFixed(2)}');

  }
}