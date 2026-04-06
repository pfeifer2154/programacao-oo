import 'quadrado.dart';

void main() {
  var q1 = Quadrado(4, "*");
  var q2 = Quadrado(5, "#");
  var q3 = Quadrado(4, "@");
  var q4 = Quadrado(4, "*");

  q1.exibirResumo();
  q2.exibirResumo();
  q3.exibirResumo();
  q4.exibirResumo();
  
  q1.desenhar();
  q2.desenhar();

  print("q1 é igual a q2? ${q1.ehIgual(q2)}");
  print("q1 é igual a q3? ${q1.ehIgual(q3)}");
  print("q1 é igual a q4? ${q1.ehIgual(q4)}");
}