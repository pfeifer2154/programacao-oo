class Carteira {
  double _saldo;

  Carteira(this._saldo);

  void adicionar(double valor) => _saldo += valor;

  void exibir() {
    print('  Saldo: R\$ ${_saldo.toStringAsFixed(2)}');
  }
}

class Pessoa {
  String _nome;
  Carteira _carteira;

  Pessoa(this._nome, this._carteira);

  void exibir() {
    print('Pessoa: $_nome');
    _carteira.exibir();
  }
}
void main() {
  Pessoa? p1 = Pessoa('Lucas', Carteira(100));
  Pessoa? p2 = p1;

  print('Estado inicial:');
  p1.exibir();
  p2.exibir();

  p2._carteira.adicionar(50);

  print('\nDepois de alterar a carteira por p2:');
  p1.exibir();
  p2.exibir();

  p1 = null;
  print('\nDepois de p1 = null:');
  print('p1: $p1');
  p2.exibir();

  p2 = null;
  print('\nDepois de p2 = null:');
  print('p2: $p2');

  print('''
=== Respostas ===
a) p1 e p2 apontavam para o MESMO objeto Pessoa no heap. Alterar a carteira
   via p2 modifica o estado do objeto compartilhado, que p1 também referenciava.

b) As variáveis p1 e p2 armazenam uma REFERÊNCIA (endereço de memória)
   para o objeto, não o objeto inteiro. O objeto reside no heap; as variáveis
   ficam na stack (ou em outra estrutura de referência gerenciada pela VM).

c) Em linguagens OO com gerenciamento de memória:
   - STACK: armazena variáveis locais e referências (endereços).
   - HEAP: armazena os objetos criados com "new" / instanciação.

d) Os objetos Pessoa e Carteira se tornam elegíveis para o garbage collector
   quando não há mais nenhuma referência ativa apontando para eles.
   Neste programa, isso ocorre quando p2 = null é executado — nesse momento,
   o objeto Pessoa (e possivelmente a Carteira, se não houver outra referência
   a ela) fica sem referências e pode ser coletado.
''');
}
