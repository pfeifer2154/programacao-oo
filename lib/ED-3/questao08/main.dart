import 'cupomDesconto.dart';

void main() {
  CupomDesconto cupom = CupomDesconto('PROMO10', 10.0, true);

  print('=== Estado inicial ===');
  cupom.exibirCupom();

  print('\n=== Alterando com setters ===');
  cupom.codigo = '';         
  cupom.codigo = 'verão30';  
  cupom.percentual = 150;    
  cupom.percentual = 30.0;

  cupom.exibirCupom();

  print('\n=== Calculando desconto ===');
  double valor = 500.0;
  double desconto = cupom.calcularDesconto(valor);
  print('Valor final: R\$ ${(valor - desconto).toStringAsFixed(2)}');

  print('\n=== Desativando cupom ===');
  cupom.desativar();
  cupom.calcularDesconto(500.0); 

  print('\n=== Estado final ===');
  cupom.exibirCupom();
}