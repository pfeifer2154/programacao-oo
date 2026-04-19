class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(String nome, String email, double saldoCarteira, bool ativo)
      : _nome = nome,
        _email = email,
        _saldoCarteira = saldoCarteira,
        _ativo = ativo;

  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print('Erro: nome não pode ser vazio.');
      return;
    }
    _nome = valor.trim();
  }

  set email(String valor) {
    if (valor.trim().isEmpty) {
      print('Erro: email não pode ser vazio.');
      return;
    }
    _email = valor.trim();
  }

  set saldoCarteira(double valor) {
    if (valor < 0) {
      print('Erro: saldo não pode ser negativo.');
      return;
    }
    _saldoCarteira = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() {
    _ativo = true;
    print('Cliente "$_nome" ativado.');
  }

  void desativar() {
    _ativo = false;
    print('Cliente "$_nome" desativado.');
  }

  void adicionarSaldo(double valor) {
    if (valor <= 0) {
      print('Erro: valor de adição deve ser positivo.');
      return;
    }
    _saldoCarteira += valor;
    print('Adicionado R\$ ${valor.toStringAsFixed(2)} ao saldo de "$_nome".');
  }

  void debitarSaldo(double valor) {
    if (valor <= 0) {
      print('Erro: valor de débito deve ser positivo.');
      return;
    }
    if (valor > _saldoCarteira) {
      print('Erro: saldo insuficiente para debitar R\$ ${valor.toStringAsFixed(2)}.');
      return;
    }
    _saldoCarteira -= valor;
    print('Debitado R\$ ${valor.toStringAsFixed(2)} do saldo de "$_nome".');
  }

  void exibirCliente() {
    print('Cliente: $_nome | Email: $_email | '
        'Saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)} | '
        'Status: ${_ativo ? "Ativo" : "Inativo"}');
  }
}