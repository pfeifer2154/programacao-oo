import 'aluno.dart';

void main() {
  var alunos = [
    Aluno("Matheus", 8, 7),
    Aluno("Ana", 5, 6),
    Aluno("Carlos", 3, 4),
    Aluno("Julia", 9, 9),
    Aluno("Pedro", 6, 6),
    Aluno("Lucas", 2, 5),
    Aluno("Mariana", 10, 10),
    Aluno("João", 4, 7),
    Aluno("Beatriz", 8, 8),
    Aluno("Rafael", 5, 5),
  ];

  for (var aluno in alunos) {
    aluno.exibirBoletim();
  }
}