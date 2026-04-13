import 'cofrinho.dart';

void main() {
  var cofrinho = Cofrinho(0);
  cofrinho.exibirSaldo();
  cofrinho.depositar(10);
  cofrinho.depositar(25.5);
  cofrinho.depositar(5);
  cofrinho.exibirSaldo();
  cofrinho.quebrar();
  cofrinho.exibirSaldo();
}