class Carro {
  String _modelo;
  double _quilometragem;

  Carro(this._modelo, this._quilometragem);

  void adicionarQuilometragem(double km) {
    _quilometragem += km;
  }

  void exibir() {
    print('Modelo: $_modelo | Quilometragem: ${_quilometragem.toStringAsFixed(1)} km');
  }
}

class Oficina {
  void revisar(Carro carro) {
    print('Realizando teste de rodagem...');
    carro.adicionarQuilometragem(50.0);
    print('Revisão concluída.');
  }
}