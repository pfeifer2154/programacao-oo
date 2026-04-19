class Endereco {
  String _rua;
  int _numero;
  String _cidade;

  Endereco(this._rua, this._numero, this._cidade);

  void alterarRua(String novaRua) => _rua = novaRua;

  void exibir() {
    print('  Endereço: $_rua, nº $_numero, $_cidade');
  }
}

class Cliente {
  String _nome;
  Endereco _endereco;

  Cliente(this._nome, this._endereco);

  Cliente.copia(Cliente outro)
      : _nome = outro._nome,
        _endereco = Endereco(
          outro._endereco._rua,
          outro._endereco._numero,
          outro._endereco._cidade,
        );

  void exibir() {
    print('Cliente: $_nome');
    _endereco.exibir();
  }
}

void main() {
  Cliente c1 = Cliente('Marina', Endereco('Rua A', 10, 'Curitiba'));
  Cliente c2 = Cliente.copia(c1);

  c2._endereco.alterarRua('Rua B');

  print('Cliente original:');
  c1.exibir();

  print('\nCliente copiado:');
  c2.exibir();

  print('''
=== Respostas ===
a) A alteração no endereço de c2 não afetou c1 porque o construtor
   Cliente.copia() criou um NOVO objeto Endereco com os mesmos valores.
   Cada cliente possui seu próprio objeto Endereco independente.

b) Para evitar o compartilhamento, o construtor de cópia instanciou
   explicitamente um novo Endereco: Endereco(outro._endereco._rua, ...)
   em vez de apenas copiar a referência: _endereco = outro._endereco.

c) Copiar a REFERÊNCIA faz duas variáveis apontarem para o mesmo objeto
   — qualquer alteração é compartilhada. Criar uma NOVA INSTÂNCIA com os
   mesmos dados gera um objeto independente; alterações não se propagam.
   Isso é chamado de "cópia profunda" (deep copy) vs "cópia rasa" (shallow copy).
''');
}
