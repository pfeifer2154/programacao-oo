abstract class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void exibirDados();
}

class FuncionarioComum extends Funcionario {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  void exibirDados() {
    print('Funcionário Comum');
    print('Nome: $nome');
    print('Salário: R\$ $salario');
    print('');
  }
}

class Gerente extends Funcionario {
  String setor;

  Gerente(String nome, double salario, this.setor) : super(nome, salario);

  @override
  void exibirDados() {
    print('Gerente');
    print('Nome: $nome');
    print('Salário: R\$ $salario');
    print('Setor: $setor');
    print('');
  }
}
