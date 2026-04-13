import 'pokemon.dart';

class Treinador {
  String nome;
  Pokemon pokemon1;
  Pokemon pokemon2;
  Pokemon pokemon3;

  Treinador(this.nome, this.pokemon1, this.pokemon2, this.pokemon3) {
    if (nome.isEmpty) {
      throw Exception("Nome do treinador não pode ser vazio");
    }
  }

  void exibirTime() {
    print("Treinador: $nome\n");

    pokemon1.exibirPokemon();
    pokemon2.exibirPokemon();
    pokemon3.exibirPokemon();
  }

  int calcularPoderTotal() {
    return pokemon1.nivel +
        pokemon2.nivel +
        pokemon3.nivel;
  }

  void pokemonMaisForte() {
    Pokemon maisForte = pokemon1;

    if (pokemon2.nivel > maisForte.nivel) {
      maisForte = pokemon2;
    }
    if (pokemon3.nivel > maisForte.nivel) {
      maisForte = pokemon3;
    }

    print("\nPokémon mais forte:");
    maisForte.exibirPokemon();
  }
}