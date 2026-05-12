import 'veiculo.dart';

void main() {
  Veiculo carro = Carro('Toyota', 'Corolla', 2022, 4);
  Veiculo moto = Moto('Honda', 'CB 500', 2021, 500);
  carro.exibirFicha();
  moto.exibirFicha();
}