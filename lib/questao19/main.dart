import 'comodo.dart';
import 'casa.dart';

void main() {
  var c1 = Comodo("Sala", 20.5);
  var c2 = Comodo("Quarto", 15.0);
  var c3 = Comodo("Cozinha", 10.0);

  var casa = Casa("Matheus", c1, c2, c3);

  casa.exibirCasa();

  print("\nÁrea total: ${casa.calcularAreaTotal()} m²");
}