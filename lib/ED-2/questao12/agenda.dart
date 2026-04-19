import 'contato.dart';

class Agenda {
  List<Contato> _contatos;

  Agenda.vazia() : _contatos = [];

  Agenda.comContatos(List<Contato> contatos) : _contatos = contatos;

  void adicionarContato(Contato contato) {
    _contatos.add(contato);
    print('Contato "${contato.nome}" adicionado.');
  }

  void removerContatoPorNome(String nome) {
    int antes = _contatos.length;
    _contatos.removeWhere((c) => c.nome == nome);
    if (_contatos.length < antes) {
      print('Contato "$nome" removido.');
    } else {
      print('Contato "$nome" não encontrado.');
    }
  }

  void listarContatos() {
    if (_contatos.isEmpty) {
      print('  (nenhum contato)');
    } else {
      for (var contato in _contatos) {
        contato.exibir();
      }
    }
  }
}