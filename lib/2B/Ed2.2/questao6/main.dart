import 'ingresso.dart';

void main() {
  IngressoVip vip = IngressoVip('Show de Rock', 150.00, 50.00);
  print('=== Ingresso VIP ===');
  print('Evento: ${vip.evento}');
  print('Valor base: R\$ ${vip.valor}');
  print('Valor adicional: R\$ ${vip.valorAdicional}');
  print('Valor final: R\$ ${vip.valorFinal()}');

  print('');

  IngressoPromocional promo = IngressoPromocional('Festival de Verão', 120.00, 30.00);
  print('=== Ingresso Promocional ===');
  print('Evento: ${promo.evento}');
  print('Valor base: R\$ ${promo.valor}');
  print('Desconto: R\$ ${promo.desconto}');
  print('Valor final: R\$ ${promo.valorFinal()}');
}