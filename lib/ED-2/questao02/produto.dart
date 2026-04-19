class Produto {
  String _nome;
  double _preco;
  int _estoque;

  Produto(this._nome, this._preco, this._estoque);

  void repor(int qtd) {
    _estoque += qtd;
    print('Reposto $qtd unidades. Estoque atual: $_estoque');
  }

  void vender(int qtd) {
    if (qtd > _estoque) {
      print('Estoque insuficiente. Disponível: $_estoque');
    } else {
      _estoque -= qtd;
      print('Vendido $qtd unidades. Estoque atual: $_estoque');
    }
  }

  void exibirFicha() {
    print('Produto: $_nome | Preço: R\$ ${_preco.toStringAsFixed(2)} | Estoque: $_estoque');
  }
}

void main() {
  Produto p = Produto('Teclado Mecânico', 350.00, 10);

  print('=== Ficha do Produto ===');
  p.exibirFicha();

  p.vender(3);
  p.repor(5);
  p.vender(15);
  p.exibirFicha();
}
