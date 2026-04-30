import 'veiculo.dart';

void main() {
  Veiculo veiculo = Veiculo('Honda', 'CG 160', 2024);
  Carro carro = Carro('Toyota', 'Corolla', 2025, 4);

  print('--- Veículo ---');
  veiculo.exibirFicha();

  print('\n--- Carro ---');
  carro.exibirFicha();
}