import 'carro.dart';

void main() {
  Carro carro = Carro('Fusca', 12000);
  Oficina oficina = Oficina();

  print('Antes da revisão:');
  carro.exibir();

  oficina.revisar(carro);

  print('\nDepois da revisão:');
  carro.exibir();

  print('''
=== Respostas ===
a) A quilometragem foi alterada porque o parâmetro "carro" no método revisar()
   é uma referência para o mesmo objeto criado no main. Dart passa objetos
   por referência, então qualquer modificação feita dentro do método afeta
   o objeto original diretamente — sem precisar retornar nada.

b) O parâmetro representa o MESMO objeto criado no main. Não é criado
   um novo carro. A variável local "carro" dentro de revisar() aponta
   para o mesmo endereço de memória do objeto original.
''');
}