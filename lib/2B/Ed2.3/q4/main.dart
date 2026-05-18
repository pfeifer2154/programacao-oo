import 'lista_generica.dart';

abstract class Rentavel {
  void aplicarRendimento();
}

class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  @override
  String toString() =>
      'Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.01;
  }

  @override
  String toString() =>
      'Conta Poupança | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.05;
  }

  @override
  String toString() =>
      'Conta Corrente | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
}

class ContaInvestimento extends ContaBancaria implements Rentavel {
  ContaInvestimento(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.08;
  }

  @override
  String toString() =>
      'Conta Investimento | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
}

void main() {
  ListaGenerica<Rentavel> contas = ListaGenerica<Rentavel>();

  contas.adicionar(ContaPoupanca('Ana', 1000.00));
  contas.adicionar(ContaCorrente('Bruno', 1500.00));
  contas.adicionar(ContaInvestimento('Carla', 5000.00));
  contas.adicionar(ContaPoupanca('Diego', 2500.00));
  contas.adicionar(ContaCorrente('Elisa', 800.00));

  print('--- Saldos antes do rendimento ---');
  contas.imprimirItens();

  print('\n--- Aplicando rendimentos ---');
  for (var c in contas.obterItens()) {
    c.aplicarRendimento();
  }

  print('\n--- Saldos após o rendimento ---');
  contas.imprimirItens();
}