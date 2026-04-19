import 'produto.dart';

class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(this._nome, this._preco, this._estoque, this._ativo);

  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.trim().isEmpty) { print('Erro: nome vazio.'); return; }
    _nome = valor.trim();
  }

  set preco(double valor) {
    if (valor < 0) { print('Erro: preço negativo.'); return; }
    _preco = valor;
  }

  set estoque(int valor) {
    if (valor < 0) { print('Erro: estoque negativo.'); return; }
    _estoque = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void reporEstoque(int qtd) {
    if (qtd > 0) _estoque += qtd;
  }

  void retirarEstoque(int qtd) {
    if (qtd > 0 && qtd <= _estoque) _estoque -= qtd;
  }

  void exibirProduto() {
    print('  Produto: $_nome | Preço: R\$ ${_preco.toStringAsFixed(2)} | '
        'Estoque: $_estoque | Status: ${_ativo ? "Ativo" : "Inativo"}');
  }
}

void main() {
  ListaProduto lista = ListaProduto();

  lista.inserir(Produto('Notebook', 3500.00, 10, true));
  lista.inserir(Produto('Mouse Gamer', 89.90, 50, true));
  lista.inserir(Produto('Teclado Mecânico', 350.00, 20, true));

  print('\n=== Lista completa ===');
  lista.exibirLista();

  print('\n=== Tamanho: ${lista.tamanho()} ===');

  print('\n=== Recuperando índice 2 ===');
  lista.get(2)?.exibirProduto();

  lista.remover(1);
  lista.remover(10); 

  print('\n=== Lista após remoção ===');
  lista.exibirLista();
  print('Tamanho final: ${lista.tamanho()}');
}
