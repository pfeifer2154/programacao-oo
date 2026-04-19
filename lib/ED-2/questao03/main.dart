import 'aluno.dart';

void main() {
  Aluno a1 = Aluno(ra: '2024001', nome: 'Ana Paula', notaFinal: 8.5);
  Aluno a2 = Aluno(ra: '2024002', nome: 'Bruno Silva', notaFinal: 4.0);

  print('=== Boletim ===');
  a1.exibirBoletim();
  a2.exibirBoletim();
}
