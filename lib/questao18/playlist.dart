import 'musica.dart';

class Playlist {
  String nome;
  Musica musica1;
  Musica musica2;
  Musica musica3;
  Playlist(this.nome, this.musica1, this.musica2, this.musica3) {
    if (nome.isEmpty) {
      throw Exception("Nome da playlist não pode ser vazio");
    }
  }

  void exibirPlaylist() {
    print("Playlist: $nome");
    musica1.exibirMusica();
    musica2.exibirMusica();
    musica3.exibirMusica();
  }

  int calcularDuracaoTotal() {
    return musica1.duracaoSegundos +
        musica2.duracaoSegundos +
        musica3.duracaoSegundos;
  }

  void tocarPlaylist() {
    print("Tocando playlist...\n");
    musica1.exibirMusica();
    musica2.exibirMusica();
    musica3.exibirMusica();
    print("\nDuração total: ${calcularDuracaoTotal()} segundos");
  }
}