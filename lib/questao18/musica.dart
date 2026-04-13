class Musica {
  String titulo;
  String artista;
  int duracaoSegundos;
  Musica(this.titulo, this.artista, this.duracaoSegundos) {
    if (titulo.isEmpty) {
      throw Exception("Título não pode ser vazio");
    }
    if (artista.isEmpty) {
      throw Exception("Artista não pode ser vazio");
    }
    if (duracaoSegundos <= 0) {
      throw Exception("Duração deve ser maior que 0");
    }
  }
  void exibirMusica() {
    print("$titulo - $artista (${duracaoSegundos}s)");
  }
}