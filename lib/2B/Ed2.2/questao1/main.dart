import 'funcionario.dart';

void main() {
  Funcionario funcionario = FuncionarioComum('João', 2500.00);
  Funcionario gerente = Gerente('Maria', 6000.00, 'Financeiro');

  funcionario.exibirDados();
  gerente.exibirDados();
}