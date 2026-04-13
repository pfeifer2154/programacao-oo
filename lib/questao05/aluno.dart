class Aluno {
  String nome;
  double nota1;
  double nota2;
  
  Aluno(this.nome, this.nota1, this.nota2) {
    if (nome.isEmpty) {
      throw Exception("Nome inválido");
    }
    if (nota1 < 0 || nota1 > 10) {
      throw Exception("Nota1 inválida");
    }
    if (nota2 < 0 || nota2 > 10) {
      throw Exception("Nota2 inválida");
    }
  }

  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }
  String verificarAprovacao() {
    return calcularMedia() >= 6 ? "Aprovado" : "Reprovado";
  }

  void exibirBoletim() {
    print("Nome: $nome");
    print("Notas: $nota1 e $nota2");
    print("Média: ${calcularMedia()}");
    print("Situação: ${verificarAprovacao()}");
    print("----------------------");
  }
}