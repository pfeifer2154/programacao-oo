class Funcionario {
  String nome;
  double salario;
 
  Funcionario(this.nome, this.salario);
 
  void exibirDados() {
    print('Nome: $nome');
    print('Salário: R\$ $salario');
  }
}
 
class Gerente extends Funcionario {
  String setor;
 
  Gerente(String nome, double salario, this.setor) : super(nome, salario);
 
  @override
  void exibirDados() {
    super.exibirDados();
    print('Setor: $setor');
  }
}