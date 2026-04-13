import 'contador.dart';
void main() {
  var contador1 = Contador(5);
  var contador2 = Contador(0);
  contador1.incrementar();
  contador1.incrementar();
  contador1.decrementar();
  contador1.exibirValor();
  contador2.decrementar(); 
  contador2.incrementar();
  contador2.exibirValor();
  contador1.zerar();
  contador1.exibirValor();
}