import 'personagem.dart';

void main() {
  Personagem p1 = Personagem('Arthas', 100, 80);
  Personagem p2 = p1; 

  print('Antes da alteração:');
  p1.exibir();
  p2.exibir();

  p2.alterarVida(50);

  print('\nDepois da alteração:');
  p1.exibir();
  p2.exibir();

  print('''
=== Respostas ===
a) Porque p1 e p2 são referências para o MESMO objeto na memória heap.
   Ao escrever "p2 = p1", não foi criada uma cópia — ambas as variáveis
   passaram a apontar para o mesmo endereço de memória. Alterar via p2
   altera o objeto que p1 também referencia.

b) Sim, esse comportamento é correto em Dart. Em linguagens orientadas
   a objetos, variáveis de tipos não primitivos armazenam referências
   (endereços) para objetos no heap, e não os objetos em si. Portanto,
   múltiplas variáveis podem referenciar o mesmo objeto simultaneamente.
''');
}
