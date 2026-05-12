abstract interface class Ligavel {
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
  void ligar() {
    print('$marca $modelo iniciando $sistemaOperacional...');
    print('Smartphone ligado!');
  }

  @override
  void desligar() {
    print('$marca $modelo encerrando $sistemaOperacional...');
    print('Smartphone desligado!');
  }
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam)
      : super(marca, modelo);

  @override
  void ligar() {
    print('$marca $modelo ligando com ${memoriaRam}GB de RAM...');
    print('Notebook ligado!');
  }

  @override
  void desligar() {
    print('$marca $modelo desligando...');
    print('Notebook desligado!');
  }
}