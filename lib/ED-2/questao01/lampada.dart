class Lampada {
  bool _ligada;
  int _intensidade;

  Lampada()
      : _ligada = false,
        _intensidade = 50;

  void ligar() {
    _ligada = true;
    print('Lâmpada ligada.');
  }

  void desligar() {
    _ligada = false;
    print('Lâmpada desligada.');
  }

  void aumentar() {
    if (_intensidade < 100) {
      _intensidade += 10;
      print('Intensidade aumentada para $_intensidade.');
    } else {
      print('Intensidade já está no máximo (100).');
    }
  }

  void diminuir() {
    if (_intensidade > 0) {
      _intensidade -= 10;
      print('Intensidade diminuída para $_intensidade.');
    } else {
      print('Intensidade já está no mínimo (0).');
    }
  }

  void exibirEstado() {
    print('Estado: ${_ligada ? "Ligada" : "Desligada"} | Intensidade: $_intensidade');
  }
}