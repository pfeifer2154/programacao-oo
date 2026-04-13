import 'endereco.dart';

void main() {
  var e1 = Endereco("Rua A", 10, "Centro", "São Paulo", "SP", 12345678);
  var e2 = Endereco("Rua B", 20, "Bairro B", "Rio de Janeiro", "RJ", 87654321);
  var e3 = Endereco("Rua C", 30, "Bairro C", "Curitiba", "PR", 11223344);
  e1.exibirEndereco();
  e2.exibirEndereco();
  e3.exibirEndereco();
}