import 'listaCliente.dart';

class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo);

  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.trim().isEmpty) { print('Erro: nome vazio.'); return; }
    _nome = valor.trim();
  }

  set email(String valor) {
    if (valor.trim().isEmpty) { print('Erro: email vazio.'); return; }
    _email = valor.trim();
  }

  set saldoCarteira(double valor) {
    if (valor < 0) { print('Erro: saldo negativo.'); return; }
    _saldoCarteira = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void adicionarSaldo(double valor) {
    if (valor > 0) _saldoCarteira += valor;
  }

  void debitarSaldo(double valor) {
    if (valor > 0 && valor <= _saldoCarteira) _saldoCarteira -= valor;
  }

  void exibirCliente() {
    print('  Cliente: $_nome | Email: $_email | '
        'Saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)} | '
        'Status: ${_ativo ? "Ativo" : "Inativo"}');
  }
}

void main() {
  ListaCliente lista = ListaCliente();

  lista.inserir(Cliente('Ana Lima', 'ana@email.com', 100.0, true));
  lista.inserir(Cliente('Bruno Costa', 'bruno@email.com', 50.0, true));
  lista.inserir(Cliente('Carla Dias', 'carla@email.com', 200.0, false));

  print('\n=== Lista completa ===');
  lista.exibirLista();

  print('\n=== Tamanho: ${lista.tamanho()} ===');

  print('\n=== Recuperando índice 1 ===');
  lista.get(1)?.exibirCliente();

  lista.remover(0);
  lista.remover(99); 

  print('\n=== Lista após remoção ===');
  lista.exibirLista();
  print('Tamanho final: ${lista.tamanho()}');
}
