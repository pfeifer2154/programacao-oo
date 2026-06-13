import 'ingresso.dart';

void main() {
  var ingresso = Ingresso('Show de Rock', 120.00);
  var vip = IngressoVip('Show de Rock', 120.00, 80.00);
 
  print('--- Ingresso comum ---');
  ingresso.exibirResumo();
 
  print('\n--- Ingresso VIP ---');
  vip.exibirResumo();
}
 