import 'produto.dart';

void main() {
  Produto p = Produto('Teclado Mecânico', 350.00, 10);

  print('=== Ficha do Produto ===');
  p.exibirFicha();

  p.vender(3);
  p.repor(5);
  p.vender(15);
  p.exibirFicha();
}
