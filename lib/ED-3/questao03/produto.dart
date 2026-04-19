class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(String nome, double preco, int estoque, bool ativo)
      : _nome = nome,
        _preco = preco,
        _estoque = estoque,
        _ativo = ativo;

  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print('Erro: nome não pode ser vazio.');
      return;
    }
    _nome = valor.trim();
  }

  set preco(double valor) {
    if (valor < 0) {
      print('Erro: preço não pode ser negativo.');
      return;
    }
    _preco = valor;
  }

  set estoque(int valor) {
    if (valor < 0) {
      print('Erro: estoque não pode ser negativo.');
      return;
    }
    _estoque = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() {
    _ativo = true;
    print('Produto "$_nome" ativado.');
  }

  void desativar() {
    _ativo = false;
    print('Produto "$_nome" desativado.');
  }

  void reporEstoque(int quantidade) {
    if (quantidade <= 0) {
      print('Erro: quantidade de reposição deve ser positiva.');
      return;
    }
    _estoque += quantidade;
    print('Reposto $quantidade unidades de "$_nome". Estoque: $_estoque');
  }

  void retirarEstoque(int quantidade) {
    if (quantidade <= 0) {
      print('Erro: quantidade deve ser positiva.');
      return;
    }
    if (quantidade > _estoque) {
      print('Erro: estoque insuficiente. Disponível: $_estoque');
      return;
    }
    _estoque -= quantidade;
    print('Retirado $quantidade unidades de "$_nome". Estoque: $_estoque');
  }

  void exibirProduto() {
    print('Produto: $_nome | Preço: R\$ ${_preco.toStringAsFixed(2)} | '
        'Estoque: $_estoque | Status: ${_ativo ? "Ativo" : "Inativo"}');
  }
}