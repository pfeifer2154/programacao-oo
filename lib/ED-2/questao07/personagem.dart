class Personagem {
  String _nome;
  int _vida;
  int _energia;

  Personagem(this._nome, this._vida, this._energia);

  void alterarVida(int novaVida) {
    _vida = novaVida;
  }

  void exibir() {
    print('Nome: $_nome | Vida: $_vida | Energia: $_energia');
  }
}