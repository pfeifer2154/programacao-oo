import 'produto.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse', 89.90, 50, true);

  print('=== Estado inicial ===');
  p1.exibirProduto();
  p2.exibirProduto();

  print('\n=== Alterando com setters ===');
  p1.preco = 3200.00;
  p2.nome = '';        
  p2.nome = 'Mouse Gamer';
  p1.estoque = -5;    

  print('\n=== Operações de estoque ===');
  p1.reporEstoque(5);
  p2.retirarEstoque(60); 
  p2.retirarEstoque(10);

  p2.desativar();

  print('\n=== Estado final ===');
  p1.exibirProduto();
  p2.exibirProduto();
}
