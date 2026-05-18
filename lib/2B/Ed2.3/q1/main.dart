import 'lista_generica.dart';

abstract class Bonificavel {
  double calcularBonus();
}

abstract class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  @override
  String toString() {
    return 'Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}

class FuncionarioComum extends Funcionario implements Bonificavel {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  double calcularBonus() => salario * 0.05;

  @override
  String toString() =>
      'Funcionário Comum | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}';
}

class Gerente extends Funcionario implements Bonificavel {
  String setor;

  Gerente(String nome, double salario, this.setor) : super(nome, salario);

  @override
  double calcularBonus() => salario * 0.15;

  @override
  String toString() =>
      'Gerente | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Setor: $setor | Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}';
}

void main() {
  ListaGenerica<Bonificavel> funcionarios = ListaGenerica<Bonificavel>();

  funcionarios.adicionar(FuncionarioComum('Ana', 2500.00));
  funcionarios.adicionar(FuncionarioComum('Bruno', 3200.00));
  funcionarios.adicionar(Gerente('Carla', 7000.00, 'Financeiro'));
  funcionarios.adicionar(FuncionarioComum('Diego', 2800.00));
  funcionarios.adicionar(Gerente('Elisa', 8500.00, 'Tecnologia'));

  print('--- Impressão dos funcionários ---');
  funcionarios.imprimirItens();

  print('\n--- Bônus dos funcionários ---');
  for (var f in funcionarios.obterItens()) {
    print('Bônus: R\$ ${f.calcularBonus().toStringAsFixed(2)}');
  }
}