import 'informativo.dart';

void main() {
  LivroDigital digital = LivroDigital('Clean Code', 'Robert C. Martin', 12.5);
  LivroFisico fisico = LivroFisico('O Senhor dos Anéis', 'J.R.R. Tolkien', 1200);

  digital.exibirInformacoes();
  fisico.exibirInformacoes();
}