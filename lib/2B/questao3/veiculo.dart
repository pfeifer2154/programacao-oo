class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  void exibirFicha() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
  }
}

class Carro extends Veiculo {
  int quantidadePortas;

  Carro(
    String marca,
    String modelo,
    int ano,
    this.quantidadePortas,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Quantidade de portas: $quantidadePortas');
  }
}