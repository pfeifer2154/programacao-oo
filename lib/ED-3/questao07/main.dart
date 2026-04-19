import 'cliente.dart';

void main() {
  Cliente cliente = Cliente('Mariana Souza', 'mariana@email.com', 500.0, true);

  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 89.90, 50, true);
  Produto p3 = Produto('Headset', 250.00, 15, true);

  Carrinho carrinho = Carrinho(cliente);
  carrinho.adicionarItem(ItemCarrinho(p1, 1));
  carrinho.adicionarItem(ItemCarrinho(p2, 2));
  carrinho.adicionarItem(ItemCarrinho(p3, 1));

  carrinho.exibirCarrinho();

  print('\n=== Removendo item índice 1 ===');
  carrinho.removerItem(1);
  carrinho.exibirCarrinho();
}