import '../questao06/produto.dart';
import 'pedido.dart';

void main() {
  var p1 = Produto(1,"Notebook", 3500.0,1);
  var p2 = Produto(2,"Mouse", 100.0,2);
  var p3 = Produto(3,"Teclado", 200.0,3);

  var pedido = Pedido(1);

  pedido.adicionarProduto(p1);
  pedido.adicionarProduto(p2);
  pedido.adicionarProduto(p3);

  pedido.exibirPedido();
}