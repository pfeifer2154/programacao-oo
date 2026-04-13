class Cofrinho {
  double saldo;
  int quantidadeDepositos;
  Cofrinho(this.saldo) : quantidadeDepositos = 0 {
    if (saldo < 0) {
      saldo = 0;
    }
  }

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      quantidadeDepositos++;
      print("Depósito de R\$ $valor realizado.");
    } else {
      print("Valor inválido para depósito.");
    }
  }

  void quebrar() {
    print("Cofrinho quebrado!");
    print("Total acumulado: R\$ $saldo");
    print("Quantidade de depósitos: $quantidadeDepositos");
    saldo = 0;
  }

  void exibirSaldo() {
    print("Saldo atual: R\$ $saldo");
  }
}