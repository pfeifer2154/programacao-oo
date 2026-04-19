import 'cliente.dart';

void main() {
  Loja loja = Loja('Tech Store');

  Cliente c1 = Cliente('Ana Lima', 'ana@email.com', 500.0, true);
  Cliente c2 = Cliente('Bruno Costa', 'bruno@email.com', 1500.0, true);
  loja.cadastrarCliente(c1);
  loja.cadastrarCliente(c2);

  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 89.90, 50, true);
  Produto p3 = Produto('Headset', 250.00, 15, true);
  loja.cadastrarProduto(p1);
  loja.cadastrarProduto(p2);
  loja.cadastrarProduto(p3);

  Carrinho carrinho1 = Carrinho(c1);
  carrinho1.adicionarItem(ItemCarrinho(p2, 1));
  carrinho1.adicionarItem(ItemCarrinho(p3, 1));

  CupomDesconto cupom = CupomDesconto('TECH10', 10.0, true);
  Pedido pedido1 = Pedido('PED-001', carrinho1, cupom: cupom);
  pedido1.fecharPedido();
  loja.registrarPedido(pedido1);

  Carrinho carrinho2 = Carrinho(c2);
  carrinho2.adicionarItem(ItemCarrinho(p1, 1));
  carrinho2.adicionarItem(ItemCarrinho(p2, 2));

  Pedido pedido2 = Pedido('PED-002', carrinho2);
  pedido2.fecharPedido();
  loja.registrarPedido(pedido2);

  loja.exibirResumoLoja();
}