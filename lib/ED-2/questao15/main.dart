import 'funcionario.dart';

void main() {
  Funcionario f1 = Funcionario.estagiario('João');
  Funcionario f2 = Funcionario.pleno('Larissa', 3500);
  Funcionario f3 = Funcionario.gerente(nome: 'Carlos', bonus: 1500);

  print('=== Funcionários ===');
  f1.exibirDados();
  f2.exibirDados();
  f3.exibirDados();

  print('''
=== Respostas ===
a) Construtores nomeados deixam o código mais expressivo e seguro. Em vez
   de passar vários parâmetros com significados implícitos, o nome do
   construtor já comunica a intenção: Funcionario.estagiario() deixa claro
   o tipo de vínculo que está sendo criado, facilitando leitura e manutenção.

b) O estado inicial muda conforme o construtor:
   - estagiario: cargo="Estagiário", salário fixo de 800, sem bônus.
   - pleno: cargo="Pleno", salário informado pelo chamador, sem bônus.
   - gerente: cargo="Gerente", salário fixo de 8000, bônus configurável
     (default 1000 se não informado).

c) Definir cargo e salário no construtor garante que o objeto nunca esteja
   em estado inconsistente. Se fosse necessário chamar métodos separados
   (setCargo(), setSalario()) após a criação, um objeto poderia ser usado
   antes de estar completamente configurado, gerando bugs sutis. O construtor
   centraliza a inicialização e assegura invariantes desde o início.
''');
}
