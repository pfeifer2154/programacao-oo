import 'pessoa.dart';

void main() {
  Pessoa aluno = Aluno('Lucas', 20, '2024001', 'Ciência da Computação');
  Pessoa professor = Professor('Carlos', 45, 'Programação Orientada a Objetos', 5500.00);

  aluno.exibirDados();
  professor.exibirDados();
}