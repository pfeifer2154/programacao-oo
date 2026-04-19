import 'agenda.dart';
import 'contato.dart';

void main() {
  Agenda agenda1 = Agenda.vazia();
  agenda1.adicionarContato(Contato('Ana', '1111-1111'));
  agenda1.adicionarContato(Contato('Pedro', '2222-2222'));

  Agenda agenda2 = Agenda.comContatos([
    Contato('Bruno', '3333-3333'),
    Contato('Clara', '4444-4444'),
  ]);

  print('\nAgenda 1:');
  agenda1.listarContatos();

  print('\nAgenda 2:');
  agenda2.listarContatos();

  agenda1.removerContatoPorNome('Ana');
  print('\nAgenda 1 após remoção:');
  agenda1.listarContatos();

  print('''
=== Respostas ===
a) Agenda.vazia() começa sem nenhum contato — útil quando se quer
   construir a lista gradualmente. Agenda.comContatos() já inicia
   populada — prático quando os dados já estão disponíveis.

b) Os contatos NÃO são recriados. A agenda passa a usar as REFERÊNCIAS
   recebidas da lista. Isso significa que se um objeto Contato da lista
   original for alterado externamente, a agenda também refletirá a mudança.
''');
}
