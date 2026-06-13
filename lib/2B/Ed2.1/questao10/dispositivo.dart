class Dispositivo {
  String marca;
  String modelo;
 
  Dispositivo(this.marca, this.modelo);
 
  void ligar() {
    print('$marca $modelo está ligando...');
  }
}
 
class Smartphone extends Dispositivo {
  String sistemaOperacional;
 
  Smartphone(String marca, String modelo, this.sistemaOperacional)
      : super(marca, modelo);
 
  @override
  void ligar() {
    print('$marca $modelo ligando... Iniciando $sistemaOperacional!');
  }
}