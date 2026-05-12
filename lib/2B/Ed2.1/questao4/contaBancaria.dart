class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado.');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado.');
    } else {
      print('Saldo insuficiente.');
    }
  }

  void exibirSaldo() {
    print('Titular: $titular');
    print('Saldo atual: R\$ $saldo');
  }
}

class ContaPoupanca extends ContaBancaria {
  double taxaRendimento = 0.01;

  ContaPoupanca(String titular, double saldo)
      : super(titular, saldo);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
    print('Rendimento da poupança aplicado.');
  }
}

class ContaCorrente extends ContaBancaria {
  double taxaRendimento = 0.05;

  ContaCorrente(String titular, double saldo)
      : super(titular, saldo);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
    print('Rendimento da conta corrente aplicado.');
  }
}
