import 'pedido.dart';

void main() {
  Pedido delivery = PedidoDelivery('PED001', 85.00, 'Rua das Flores, 123', 8.00);
  Pedido retirada = PedidoRetirada('PED002', 60.00, 'Ana Silva');

  delivery.exibirPedido();
  retirada.exibirPedido();
}