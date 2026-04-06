import '../questao08/endereco.dart';
import 'pessoa.dart';

void main() {
  var p1 = Pessoa(
    "Matheus",
    20,
    "12345678900",
    Endereco("Rua A", 10, "Centro", "São Paulo", "SP", 12345678),
  );

  var p2 = Pessoa(
    "Ana",
    25,
    "98765432100",
    Endereco("Rua B", 20, "Bairro B", "Rio de Janeiro", "RJ", 87654321),
  );

  var p3 = Pessoa(
    "Carlos",
    30,
    "11122233344",
    Endereco("Rua C", 30, "Bairro C", "Curitiba", "PR", 11223344),
  );

  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
}