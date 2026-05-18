import 'lista_generica.dart';

abstract class Informativo {
  void exibirInformacoes();
}

class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);
}

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas)
      : super(titulo, autor);

  @override
  void exibirInformacoes() => print(toString());

  @override
  String toString() =>
      'Livro Físico | Título: $titulo | Autor: $autor | Páginas: $quantidadePaginas';
}

class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() => print(toString());

  @override
  String toString() =>
      'Livro Digital | Título: $titulo | Autor: $autor | Tamanho: ${tamanhoArquivo.toStringAsFixed(0)} MB';
}

class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(String titulo, String autor, this.duracaoMinutos)
      : super(titulo, autor);

  @override
  void exibirInformacoes() => print(toString());

  @override
  String toString() =>
      'Audiobook | Título: $titulo | Autor: $autor | Duração: $duracaoMinutos minutos';
}

void main() {
  ListaGenerica<Informativo> livros = ListaGenerica<Informativo>();

  livros.adicionar(LivroFisico('Clean Code', 'Robert Martin', 425));
  livros.adicionar(LivroDigital('Dart Básico', 'Mariana Souza', 12));
  livros.adicionar(Audiobook('POO na Prática', 'Carlos Lima', 180));
  livros.adicionar(LivroFisico('Algoritmos Modernos', 'Ana Torres', 350));
  livros.adicionar(LivroDigital('Flutter Essencial', 'Pedro Alves', 25));

  print('--- Impressão dos livros ---');
  livros.imprimirItens();

  print('\n--- Informações via interface ---');
  for (var l in livros.obterItens()) {
    l.exibirInformacoes();
  }
}