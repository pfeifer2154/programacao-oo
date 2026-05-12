import 'contaBancaria.dart';

void main() {
  ContaPoupanca poupanca = ContaPoupanca('Matheus', 1000);
  ContaCorrente corrente = ContaCorrente('Pfeifer', 2000);

  print('--- Conta Poupança ---');
  poupanca.exibirSaldo();
  poupanca.depositar(500);
  poupanca.sacar(200);
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();
  print('\n--- Conta Corrente ---');
  corrente.exibirSaldo();
  corrente.depositar(300);
  corrente.sacar(100);
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}