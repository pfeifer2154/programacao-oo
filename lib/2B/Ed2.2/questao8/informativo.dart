abstract interface class Informativo {
  void exibirInformacoes();
}

class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);
}

class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('=== Livro Digital ===');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Tamanho: $tamanhoArquivo MB');
    print('');
  }
}

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('=== Livro Físico ===');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Páginas: $quantidadePaginas');
    print('');
  }
}