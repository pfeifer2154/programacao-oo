import 'lista_generica.dart';

abstract class Apresentavel {
  void exibirDados();
}

abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}

class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso)
      : super(nome, idade);

  @override
  void exibirDados() => print(toString());

  @override
  String toString() =>
      'Aluno | Nome: $nome | Idade: $idade anos | Matrícula: $matricula | Curso: $curso';
}

class Professor extends Pessoa implements Apresentavel {
  String disciplina;
  double salario;

  Professor(String nome, int idade, this.disciplina, this.salario)
      : super(nome, idade);

  @override
  void exibirDados() => print(toString());

  @override
  String toString() =>
      'Professor | Nome: $nome | Idade: $idade anos | Disciplina: $disciplina | Salário: R\$ ${salario.toStringAsFixed(2)}';
}

class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia;

  Coordenador(String nome, int idade, this.area, this.tempoExperiencia)
      : super(nome, idade);

  @override
  void exibirDados() => print(toString());

  @override
  String toString() =>
      'Coordenador | Nome: $nome | Idade: $idade anos | Área: $area | Experiência: $tempoExperiencia anos';
}

void main() {
  ListaGenerica<Apresentavel> pessoas = ListaGenerica<Apresentavel>();

  pessoas.adicionar(Aluno('Ana', 19, 'A001', 'ADS'));
  pessoas.adicionar(Aluno('Bruno', 22, 'A002', 'Engenharia de Software'));
  pessoas.adicionar(Professor('Carla', 38, 'POO', 2000.00));
  pessoas.adicionar(Professor('Diego', 41, 'Banco de Dados', 1900.00));
  pessoas.adicionar(Coordenador('Elisa', 45, 'Tecnologia', 15));

  print('--- Impressão das pessoas ---');
  pessoas.imprimirItens();

  print('\n--- Dados via interface ---');
  for (var p in pessoas.obterItens()) {
    p.exibirDados();
  }
}