class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano) {
    if (dia < 1 || dia > 31) {
      throw Exception("Dia inválido");
    }
    if (mes < 1 || mes > 12) {
      throw Exception("Mês inválido");
    }
    if (ano <= 0) {
      throw Exception("Ano inválido");
    }
  }

  void exibirData() {
    String diaFormatado = dia.toString().padLeft(2, '0');
    String mesFormatado = mes.toString().padLeft(2, '0');

    print("$diaFormatado/$mesFormatado/$ano");
  }
}