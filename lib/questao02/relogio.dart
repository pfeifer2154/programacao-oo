class Relogio {
  int hora;
  int minuto;
  int segundo;

  Relogio(this.hora, this.minuto, this.segundo) {
    if (hora < 0 || hora > 23) {
      throw Exception("Hora inválida");
    }
    if (minuto < 0 || minuto > 59) {
      throw Exception("Minuto inválido");
    }
    if (segundo < 0 || segundo > 59) {
      throw Exception("Segundo inválido");
    }
  }
  
  void exibirHorario() {
    print("${hora.toString().padLeft(2, '0')}:"
        "${minuto.toString().padLeft(2, '0')}:"
        "${segundo.toString().padLeft(2, '0')}");
  }
}