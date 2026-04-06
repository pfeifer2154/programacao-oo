import 'pokemon.dart';
import 'treinador.dart';

void main() {
  var p1 = Pokemon(25, "Pikachu", "Elétrico", 50, 120);
  var p2 = Pokemon(6, "Charizard", "Fogo", 70, 150);
  var p3 = Pokemon(9, "Blastoise", "Água", 65, 140);

  var treinador = Treinador("Ash", p1, p2, p3);

  treinador.exibirTime();

  print("\nPoder total: ${treinador.calcularPoderTotal()}");

  treinador.pokemonMaisForte();
}