import 'lista_generica.dart';

abstract class Ligavel {
  void ligar();
  void desligar();
}

class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);
}

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional)
      : super(marca, modelo);

  @override
  void ligar() => print('$marca $modelo ligado. Sistema: $sistemaOperacional iniciando...');

  @override
  void desligar() => print('$marca $modelo desligado.');

  @override
  String toString() =>
      'Smartphone | Marca: $marca | Modelo: $modelo | Sistema: $sistemaOperacional';
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam)
      : super(marca, modelo);

  @override
  void ligar() => print('$marca $modelo ligado. RAM: ${memoriaRam}GB disponível.');

  @override
  void desligar() => print('$marca $modelo desligado.');

  @override
  String toString() =>
      'Notebook | Marca: $marca | Modelo: $modelo | RAM: ${memoriaRam}GB';
}

class Televisao extends Dispositivo implements Ligavel {
  int tamanhoPolegadas;

  Televisao(String marca, String modelo, this.tamanhoPolegadas)
      : super(marca, modelo);

  @override
  void ligar() => print('$marca $modelo ligada. Tela de $tamanhoPolegadas" ativa.');

  @override
  void desligar() => print('$marca $modelo desligada.');

  @override
  String toString() =>
      'Televisão | Marca: $marca | Modelo: $modelo | Tamanho: $tamanhoPolegadas polegadas';
}

void main() {
  ListaGenerica<Ligavel> dispositivos = ListaGenerica<Ligavel>();

  dispositivos.adicionar(Smartphone('Samsung', 'Galaxy S24', 'Android'));
  dispositivos.adicionar(Smartphone('Apple', 'iPhone 15', 'iOS'));
  dispositivos.adicionar(Notebook('Dell', 'Inspiron', 16));
  dispositivos.adicionar(Notebook('Lenovo', 'ThinkPad', 32));
  dispositivos.adicionar(Televisao('LG', 'OLED55', 55));

  print('--- Impressão dos dispositivos ---');
  dispositivos.imprimirItens();

  print('\n--- Ligar e desligar via interface ---');
  for (var d in dispositivos.obterItens()) {
    d.ligar();
    d.desligar();
  }
}