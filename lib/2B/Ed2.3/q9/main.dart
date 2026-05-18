import 'lista_generica.dart';

abstract class Processavel {
  double valorFinal();
  void exibirPedido();
}

abstract class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);
}

class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal + taxaEntrega;

  @override
  void exibirPedido() => print(toString());

  @override
  String toString() =>
      'Pedido Delivery | Código: $codigo | Valor Total: R\$ ${valorTotal.toStringAsFixed(2)} | Endereço: $enderecoEntrega | Taxa: R\$ ${taxaEntrega.toStringAsFixed(2)} | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
}

class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal;

  @override
  void exibirPedido() => print(toString());

  @override
  String toString() =>
      'Pedido Retirada | Código: $codigo | Valor Total: R\$ ${valorTotal.toStringAsFixed(2)} | Cliente: $nomeCliente | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
}

class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(int codigo, double valorTotal, this.taxaUrgencia)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal + taxaUrgencia;

  @override
  void exibirPedido() => print(toString());

  @override
  String toString() =>
      'Pedido Express | Código: $codigo | Valor Total: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa Urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)} | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
}

void main() {
  ListaGenerica<Processavel> pedidos = ListaGenerica<Processavel>();

  pedidos.adicionar(PedidoDelivery(1001, 120.00, 'Rua A, 100', 15.00));
  pedidos.adicionar(PedidoRetirada(1002, 80.00, 'Ana'));
  pedidos.adicionar(PedidoExpress(1003, 200.00, 40.00));
  pedidos.adicionar(PedidoDelivery(1004, 150.00, 'Rua B, 250', 20.00));
  pedidos.adicionar(PedidoRetirada(1005, 60.00, 'Bruno'));

  print('--- Impressão dos pedidos ---');
  pedidos.imprimirItens();

  print('\n--- Valor final e exibição via interface ---');
  for (var p in pedidos.obterItens()) {
    print('Valor Final: R\$ ${p.valorFinal().toStringAsFixed(2)}');
    p.exibirPedido();
  }
}