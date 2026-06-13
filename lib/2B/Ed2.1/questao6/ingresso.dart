class Ingresso {
  String evento;
  double valor;
 
  Ingresso(this.evento, this.valor);
 
  void exibirResumo() {
    print('Evento: $evento');
    print('Valor: R\$ $valor');
  }
}
 
class IngressoVip extends Ingresso {
  double valorAdicional;
 
  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);
 
  double valorFinal() {
    return valor + valorAdicional;
  }
 
  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Adicional VIP: R\$ $valorAdicional');
    print('Valor final: R\$ ${valorFinal()}');
  }
}
 