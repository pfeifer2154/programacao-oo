import 'lista_generica.dart';

abstract class Fichavel {
  void exibirFicha();
}

abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);
}

class Carro extends Veiculo implements Fichavel {
  int quantidadePortas;

  Carro(String marca, String modelo, int ano, this.quantidadePortas)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() => print(toString());

  @override
  String toString() =>
      'Carro | Marca: $marca | Modelo: $modelo | Ano: $ano | Portas: $quantidadePortas';
}

class Moto extends Veiculo implements Fichavel {
  int cilindradas;

  Moto(String marca, String modelo, int ano, this.cilindradas)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() => print(toString());

  @override
  String toString() =>
      'Moto | Marca: $marca | Modelo: $modelo | Ano: $ano | Cilindradas: $cilindradas cc';
}

class Caminhao extends Veiculo implements Fichavel {
  double capacidadeCarga;

  Caminhao(String marca, String modelo, int ano, this.capacidadeCarga)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() => print(toString());

  @override
  String toString() =>
      'Caminhão | Marca: $marca | Modelo: $modelo | Ano: $ano | Capacidade: ${capacidadeCarga.toStringAsFixed(1)} toneladas';
}

void main() {
  ListaGenerica<Fichavel> veiculos = ListaGenerica<Fichavel>();

  veiculos.adicionar(Carro('Toyota', 'Corolla', 2022, 4));
  veiculos.adicionar(Carro('Honda', 'Civic', 2021, 4));
  veiculos.adicionar(Moto('Yamaha', 'Fazer', 2023, 250));
  veiculos.adicionar(Moto('Honda', 'Biz', 2020, 125));
  veiculos.adicionar(Caminhao('Volvo', 'VM', 2019, 12));

  print('--- Impressão dos veículos ---');
  veiculos.imprimirItens();

  print('\n--- Fichas via interface ---');
  for (var v in veiculos.obterItens()) {
    v.exibirFicha();
  }
}