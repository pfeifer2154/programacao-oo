import 'retangulo.dart';

void main() {
  Retangulo r1 = Retangulo(5.0, 3.0);
  Retangulo r2 = Retangulo.unitario();
  Retangulo r3 = Retangulo.quadrado(4.0);

  print('=== Retângulo padrão ===');
  r1.exibirDados();

  print('\n=== Retângulo 1x1 ===');
  r2.exibirDados();

  print('\n=== Quadrado lado 4 ===');
  r3.exibirDados();
}