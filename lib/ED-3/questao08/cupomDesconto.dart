class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(String codigo, double percentual, bool ativo)
      : _codigo = codigo,
        _percentual = percentual,
        _ativo = ativo;

  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  set codigo(String valor) {
    if (valor.trim().isEmpty) {
      print('Erro: código do cupom não pode ser vazio.');
      return;
    }
    _codigo = valor.trim().toUpperCase();
  }

  set percentual(double valor) {
    if (valor < 0 || valor > 100) {
      print('Erro: percentual deve estar entre 0 e 100. Recebido: $valor');
      return;
    }
    _percentual = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() {
    _ativo = true;
    print('Cupom "$_codigo" ativado.');
  }

  void desativar() {
    _ativo = false;
    print('Cupom "$_codigo" desativado.');
  }

  double calcularDesconto(double valor) {
    if (!_ativo) {
      print('Cupom "$_codigo" está inativo. Nenhum desconto aplicado.');
      return 0.0;
    }
    double desconto = valor * (_percentual / 100);
    print('Desconto de $_percentual% sobre R\$ ${valor.toStringAsFixed(2)}: '
        '-R\$ ${desconto.toStringAsFixed(2)}');
    return desconto;
  }

  void exibirCupom() {
    print('Cupom: $_codigo | Desconto: $_percentual% | '
        'Status: ${_ativo ? "Ativo" : "Inativo"}');
  }
}