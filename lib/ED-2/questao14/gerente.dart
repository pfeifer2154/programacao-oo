import 'main.dart';

class Gerente {
  String _nome;

  Gerente(this._nome);

  void depositar(Conta conta, double valor) {
    conta.creditar(valor);
    print('$_nome depositou R\$ ${valor.toStringAsFixed(2)}. Saldo: R\$ ${conta.saldo.toStringAsFixed(2)}');
  }

  void sacar(Conta conta, double valor) {
    if (valor > conta.saldo) {
      print('$_nome tentou sacar R\$ ${valor.toStringAsFixed(2)} — saldo insuficiente.');
    } else {
      conta.debitar(valor);
      print('$_nome sacou R\$ ${valor.toStringAsFixed(2)}. Saldo: R\$ ${conta.saldo.toStringAsFixed(2)}');
    }
  }
}