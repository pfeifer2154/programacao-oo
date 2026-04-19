import 'gerente.dart';

class Conta {
  String _titular;
  double _saldo;

  Conta(this._titular, this._saldo);

  void creditar(double valor) => _saldo += valor;
  void debitar(double valor) => _saldo -= valor;
  double get saldo => _saldo;

  void exibir() {
    print('Titular: $_titular | Saldo: R\$ ${_saldo.toStringAsFixed(2)}');
  }
}

void main() {
  Conta conta = Conta('Fernanda', 1000);
  Gerente g1 = Gerente('Marcos');
  Gerente g2 = Gerente('Patrícia');

  print('Estado inicial:');
  conta.exibir();

  print('\nOperações:');
  g1.depositar(conta, 200);
  conta.exibir();

  g2.sacar(conta, 150);
  conta.exibir();

  print('''
=== Respostas ===
a) Os dois gerentes conseguem alterar o mesmo saldo porque ambos recebem
   a MESMA referência do objeto Conta. Não há cópia — qualquer operação
   de um gerente é feita diretamente no objeto original.

b) Ambos operam sobre a MESMA instância de Conta. Nenhum gerente possui
   uma conta própria; eles recebem a referência como parâmetro nos métodos.

c) Este exercício demonstra que referências permitem múltiplos agentes
   agirem sobre o mesmo objeto de forma coordenada — útil para sistemas
   como bancos, onde várias entidades precisam operar sobre um recurso
   compartilhado. O cuidado necessário é garantir consistência (ex.: locks
   em ambientes concorrentes).
''');
}
