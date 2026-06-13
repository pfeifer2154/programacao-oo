import 'pedido.dart';

void main() {
  var pedido = PedidoDelivery(101, 89.90, 'Rua das Flores, 123', 9.50);
 
  print('--- Pedido Delivery ---');
  pedido.exibirPedido();
}