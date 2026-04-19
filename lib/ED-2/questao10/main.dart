import 'caixa.dart';

void main() {
  Caixa caixa = Caixa(10);

  print('Estado inicial:');
  caixa.exibir();

  alterarValor(caixa);
  print('\nDepois de alterarValor:');
  caixa.exibir();

  trocarCaixa(caixa);
  print('\nDepois de trocarCaixa:');
  caixa.exibir();

  print('''
=== Respostas ===
a) alterarValor() modifica o objeto original porque recebe a referência
   para o mesmo objeto e chama um método que altera seu estado interno.
   A referência "c" aponta para o mesmo objeto que "caixa" no main.

b) trocarCaixa() NÃO substitui a caixa do main porque ao fazer "c = Caixa(0)"
   está apenas reatribuindo a variável LOCAL "c" para um novo objeto.
   A variável "caixa" no main continua apontando para o objeto original —
   Dart passa a referência por valor, não por referência dupla (ponteiro).

c) Alterar o OBJETO (via métodos) afeta todos que referenciam esse objeto.
   Reatribuir a VARIÁVEL DE REFERÊNCIA apenas muda para onde aquela
   variável aponta localmente, sem afetar outras variáveis que apontavam
   para o objeto anterior.
''');
}
