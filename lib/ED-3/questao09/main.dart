import 'cliente.dart';

void main() {
  Cliente cliente = Cliente('Lucas Ferreira', 'lucas@email.com', 1000.0, true);

  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 89.90, 50, true);
  Produto p3 = Produto('Teclado Mecânico', 350.00, 20, true);

  Carrinho carrinho = Carrinho(cliente);
  carrinho.adicionarItem(ItemCarrinho(p1, 1));
  carrinho.adicionarItem(ItemCarrinho(p2, 2));
  carrinho.adicionarItem(ItemCarrinho(p3, 1));

  CupomDesconto cupom = CupomDesconto('DESCONTO15', 15.0, true);

  Pedido pedido = Pedido('PED-001', carrinho, cupom: cupom);

  print('=== Antes de fechar ===');
  pedido.exibirResumoPedido();

  print('\n=== Fechando pedido ===');
  pedido.fecharPedido();

  print('\n=== Resumo final ===');
  pedido.exibirResumoPedido();
}