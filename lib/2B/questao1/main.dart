import 'Funcionario.dart';

void main() {
  print('=== Funcionário ===');
  var func = Funcionario('Carlos', 3500.0);
  func.exibirDados();
 
  print('\n=== Gerente ===');
  var gerente = Gerente('Ana', 7000.0, 'TI');
  gerente.exibirDados();
}