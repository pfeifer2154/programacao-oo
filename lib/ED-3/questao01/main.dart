import 'cliente.dart';

void main() {
  Cliente c1 = Cliente('Ana Lima', 'ana@email.com', 200.0, true);
  Cliente c2 = Cliente('Bruno Costa', 'bruno@email.com', 50.0, false);

  print('=== Estado inicial ===');
  c1.exibirCliente();
  c2.exibirCliente();

  print('\n=== Alterando dados com setters ===');
  c1.email = 'ana.lima@email.com';
  c2.nome = '';           
  c2.nome = 'Bruno S. Costa';
  c2.saldoCarteira = -10; 

  print('\n=== Operações de saldo ===');
  c1.adicionarSaldo(150.0);
  c2.debitarSaldo(200.0); 
  c2.debitarSaldo(30.0);

  c2.ativar();

  print('\n=== Estado final ===');
  c1.exibirCliente();
  c2.exibirCliente();
}