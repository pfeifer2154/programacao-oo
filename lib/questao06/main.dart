import 'produto.dart';

void main() {
  var produto = Produto(1, "Teclado", 100, 6);
  produto.exibirResumo();

  produto = Produto(2, "Mouse", 50, 12);
  produto.exibirResumo();
}