abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados();
}

class Aluno extends Pessoa {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso)
      : super(nome, idade);

  @override
  void exibirDados() {
    print('=== Aluno ===');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Matrícula: $matricula');
    print('Curso: $curso');
    print('');
  }
}

class Professor extends Pessoa {
  String disciplina;
  double salario;

  Professor(String nome, int idade, this.disciplina, this.salario)
      : super(nome, idade);

  @override
  void exibirDados() {
    print('=== Professor ===');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Disciplina: $disciplina');
    print('Salário: R\$ $salario');
    print('');
  }
}