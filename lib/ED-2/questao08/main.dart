import 'controleremoto.dart';
import 'televisao.dart';

void main() {
  Televisao tv = Televisao(5, 20);
  ControleRemoto controle = ControleRemoto(tv);

  print('Estado inicial:');
  tv.exibir();

  controle.aumentarVolume();
  controle.proximoCanal();

  print('\nDepois de usar o controle:');
  tv.exibir();

  print('''
=== Respostas ===
a) O controle remoto altera diretamente o estado da televisão porque ele
   guarda uma referência para o mesmo objeto Televisao criado no main.
   Quando o controle chama métodos que modificam _canal ou _volume, está
   modificando o objeto original, não uma cópia.

b) O controle possui uma REFERÊNCIA para o mesmo objeto. Isso é percebido
   no resultado porque ao chamar tv.exibir() após usar o controle, os
   valores alterados aparecem — confirmando que é o mesmo objeto em memória.
''');
}