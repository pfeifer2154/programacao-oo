class Contato {
  String _nome;
  String _telefone;

  Contato(this._nome, this._telefone);

  String get nome => _nome;

  void exibir() {
    print('  Contato: $_nome | Tel: $_telefone');
  }
}