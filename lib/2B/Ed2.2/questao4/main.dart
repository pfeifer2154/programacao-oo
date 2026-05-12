import 'contaBancaria.dart';

void main() {
  print('=== Conta Poupança ===');
  ContaPoupanca poupanca = ContaPoupanca('Maria', 1000.00);
  poupanca.exibirSaldo();
  poupanca.depositar(500.00);
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  print('');

  print('=== Conta Corrente ===');
  ContaCorrente corrente = ContaCorrente('João', 2000.00);
  corrente.exibirSaldo();
  corrente.depositar(300.00);
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}