import 'pessoa.dart';

void main() {
  var p1 = Pessoa("Matheus", 20);
  var p2 = Pessoa("Ana", 25);
  var p3 = Pessoa("Carlos", 30);

  p1.exibirDados();
  p2.exibirDados();
  p3.exibirDados();
}