import 'lista_generica.dart';

abstract class Sonoro {
  void emitirSom();
}

abstract class Animal {
  String nome;

  Animal(this.nome);
}

class Cachorro extends Animal implements Sonoro {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Au au!');

  @override
  String toString() => 'Cachorro | Nome: $nome';
}

class Gato extends Animal implements Sonoro {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Miau!');

  @override
  String toString() => 'Gato | Nome: $nome';
}

class Passaro extends Animal implements Sonoro {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Piu piu!');

  @override
  String toString() => 'Pássaro | Nome: $nome';
}

class Vaca extends Animal implements Sonoro {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Muuu!');

  @override
  String toString() => 'Vaca | Nome: $nome';
}

class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Béé!');

  @override
  String toString() => 'Ovelha | Nome: $nome';
}

void main() {
  ListaGenerica<Sonoro> animais = ListaGenerica<Sonoro>();

  animais.adicionar(Cachorro('Rex'));
  animais.adicionar(Gato('Mimi'));
  animais.adicionar(Passaro('Piu'));
  animais.adicionar(Vaca('Mimosa'));
  animais.adicionar(Ovelha('Dolly'));

  print('--- Impressão dos animais ---');
  animais.imprimirItens();

  print('\n--- Sons via interface ---');
  for (var a in animais.obterItens()) {
    a.emitirSom();
  }
}