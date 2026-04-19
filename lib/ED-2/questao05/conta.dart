class Conta {
  String _numero;
  String _titular;
  double _saldo;

  Conta.bancaria(this._numero, this._titular) : _saldo = 0.0;

  Conta.vip(this._numero, this._titular, double saldoInicial)
      : _saldo = saldoInicial;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado.');
    }
  }

  void sacar(double valor) {
    if (valor > _saldo) {
      print('Saldo insuficiente. Saldo atual: R\$ ${_saldo.toStringAsFixed(2)}');
    } else {
      _saldo -= valor;
      print('Saque de R\$ ${valor.toStringAsFixed(2)} realizado.');
    }
  }

  void exibirResumo() {
    print('Conta: $_numero | Titular: $_titular | Saldo: R\$ ${_saldo.toStringAsFixed(2)}');
  }
}