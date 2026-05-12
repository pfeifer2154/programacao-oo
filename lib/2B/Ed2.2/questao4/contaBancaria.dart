abstract interface class Rentavel {
  void aplicarRendimento();
}

class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado. Saldo: R\$ $saldo');
  }

  void sacar(double valor) {
    if (valor > saldo) {
      print('Saldo insuficiente.');
    } else {
      saldo -= valor;
      print('Saque de R\$ $valor realizado. Saldo: R\$ $saldo');
    }
  }

  void exibirSaldo() {
    print('Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  final double taxaRendimento = 0.01;

  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
    print('Rendimento de 1% aplicado. Novo saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  final double taxaRendimento = 0.05;

  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
    print('Rendimento de 5% aplicado. Novo saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}