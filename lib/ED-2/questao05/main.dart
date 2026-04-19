import 'conta.dart';

void main() {
  Conta c1 = Conta.bancaria('001-1', 'João da Silva');
  Conta c2 = Conta.vip('002-2', 'Maria Souza', 5000.0);

  print('=== Conta Bancária ===');
  c1.exibirResumo();
  c1.depositar(1000);
  c1.sacar(200);
  c1.exibirResumo();

  print('\n=== Conta VIP ===');
  c2.exibirResumo();
  c2.sacar(1500);
  c2.exibirResumo();
}