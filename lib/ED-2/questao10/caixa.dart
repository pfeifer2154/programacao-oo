class Caixa {
  int _valor;

  Caixa(this._valor);

  void setValor(int novoValor) => _valor = novoValor;
  int get valor => _valor;

  void exibir() {
    print('Caixa valor: $_valor');
  }
}

void alterarValor(Caixa c) {
  c.setValor(999);
  print('alterarValor: valor interno alterado para 999');
}

void trocarCaixa(Caixa c) {
  c = Caixa(0); 
  print('trocarCaixa: variável local reatribuída para nova Caixa(0)');
}