class Animal {
  String nome;
 
  Animal(this.nome);
 
  void emitirSom() {
    print('$nome faz um som genérico.');
  }
}
 
class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);
 
  @override
  void emitirSom() {
    print('$nome: au au!');
  }
}
 
class Gato extends Animal {
  Gato(String nome) : super(nome);
 
  @override
  void emitirSom() {
    print('$nome: miau!');
  }
}
 
class Passaro extends Animal {
  Passaro(String nome) : super(nome);
 
  @override
  void emitirSom() {
    print('$nome: piu piu!');
  }
}