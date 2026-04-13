class Endereco {
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  int cep;

  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep) {
    if (rua.isEmpty) throw Exception("Rua inválida");
    if (numero <= 0) throw Exception("Número inválido");
    if (bairro.isEmpty) throw Exception("Bairro inválido");
    if (cidade.isEmpty) throw Exception("Cidade inválida");
    if (estado.isEmpty) throw Exception("Estado inválido");
    if (cep <= 0) throw Exception("CEP inválido");
  }

  String formatarCep() {
    String cepStr = cep.toString().padLeft(8, '0');
    return "${cepStr.substring(0, 5)}-${cepStr.substring(5)}";
  }
  
  void exibirEndereco() {
    print("Rua: $rua, Nº: $numero");
    print("Bairro: $bairro");
    print("Cidade: $cidade - $estado");
    print("CEP: ${formatarCep()}");
    print("----------------------");
  }
}