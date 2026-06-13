class Pedido {
  int codigo;
  double valorTotal;
 
  Pedido(this.codigo, this.valorTotal);
 
  void exibirPedido() {
    print('Pedido #$codigo');
    print('Valor total: R\$ $valorTotal');
  }
}
 
class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;
 
  PedidoDelivery(
      int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega)
      : super(codigo, valorTotal);
 
  double calcularValorFinal() {
    return valorTotal + taxaEntrega;
  }
 
  @override
  void exibirPedido() {
    super.exibirPedido();
    print('Endereço de entrega: $enderecoEntrega');
    print('Taxa de entrega: R\$ $taxaEntrega');
    print('Valor final: R\$ ${calcularValorFinal()}');
  }
}