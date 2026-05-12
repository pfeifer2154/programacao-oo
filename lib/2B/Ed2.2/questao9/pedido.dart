abstract class Pedido {
  String codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido();
}

class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(String codigo, double valorTotal, this.enderecoEntrega,
      this.taxaEntrega)
      : super(codigo, valorTotal);

  double calcularValorFinal() => valorTotal + taxaEntrega;

  @override
  void exibirPedido() {
    print('=== Pedido Delivery ===');
    print('Código: $codigo');
    print('Valor Total: R\$ $valorTotal');
    print('Endereço: $enderecoEntrega');
    print('Taxa de Entrega: R\$ $taxaEntrega');
    print('Valor Final: R\$ ${calcularValorFinal()}');
    print('');
  }
}

class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(String codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('=== Pedido Retirada ===');
    print('Código: $codigo');
    print('Valor Total: R\$ $valorTotal');
    print('Cliente: $nomeCliente');
    print('');
  }
}