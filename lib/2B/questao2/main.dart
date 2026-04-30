import 'Produto.dart';

void main() {
  Produto produtoComum = Produto('Arroz', 22.50);
  ProdutoPerecivel produtoPerecivel = ProdutoPerecivel('Leite', 6.99, '10/05/2026');

  print('--- Produto Comum ---');
  produtoComum.exibir();

  print('\n--- Produto Perecível ---');
  produtoPerecivel.exibir();
}