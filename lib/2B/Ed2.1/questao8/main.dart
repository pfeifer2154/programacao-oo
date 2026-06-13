import 'livro.dart';

void main() {
  var livro = Livro('Dom Casmurro', 'Machado de Assis');
  var digital = LivroDigital('Clean Code', 'Robert C. Martin', 12.5);
 
  print('--- Livro físico ---');
  livro.exibirInformacoes();
 
  print('\n--- Livro digital ---');
  digital.exibirInformacoes();
}