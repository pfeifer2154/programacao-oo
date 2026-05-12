abstract class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom();
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome diz: Au au!');
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome diz: Miau!');
  }
}

class Passaro extends Animal {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome diz: Piu piu!');
  }
}

class Vaca extends Animal {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome diz: Muuu!');
  }
}
