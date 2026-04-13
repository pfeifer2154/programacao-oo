import '../questao08/endereco.dart';

class Pessoa {
  String nome;
  int idade;
  String cpf;
  Endereco endereco;

  Pessoa(this.nome, this.idade, this.cpf, this.endereco) {
    if (nome.isEmpty) throw Exception("Nome inválido");
    if (idade < 0) throw Exception("Idade inválida");
    if (cpf.isEmpty) throw Exception("CPF inválido");
  }
  
  void exibirPessoa() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("CPF: $cpf");
    print("Endereço:");
    print("Rua: ${endereco.rua}, Nº: ${endereco.numero}");
    print("Bairro: ${endereco.bairro}");
    print("Cidade: ${endereco.cidade} - ${endereco.estado}");
    print("CEP: ${endereco.cep}");
    print("----------------------");
  }
}