import 'lista_generica.dart';

abstract class Calculavel {
  double valorFinal();
}

class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);
}

class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);

  @override
  double valorFinal() => valor + valorAdicional;

  @override
  String toString() =>
      'Ingresso VIP | Evento: $evento | Valor Original: R\$ ${valor.toStringAsFixed(2)} | Adicional: R\$ ${valorAdicional.toStringAsFixed(2)} | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
}

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
      : super(evento, valor);

  @override
  double valorFinal() => valor - desconto;

  @override
  String toString() =>
      'Ingresso Promocional | Evento: $evento | Valor Original: R\$ ${valor.toStringAsFixed(2)} | Desconto: R\$ ${desconto.toStringAsFixed(2)} | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
}

class IngressoCamarote extends Ingresso implements Calculavel {
  double taxaServico;
  String localizacao;

  IngressoCamarote(String evento, double valor, this.taxaServico, this.localizacao)
      : super(evento, valor);

  @override
  double valorFinal() => valor + taxaServico;

  @override
  String toString() =>
      'Ingresso Camarote | Evento: $evento | Valor Original: R\$ ${valor.toStringAsFixed(2)} | Taxa: R\$ ${taxaServico.toStringAsFixed(2)} | Localização: $localizacao | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
}

void main() {
  ListaGenerica<Calculavel> ingressos = ListaGenerica<Calculavel>();

  ingressos.adicionar(IngressoVip('Show Rock', 200.00, 80.00));
  ingressos.adicionar(IngressoPromocional('Teatro Infantil', 100.00, 20.00));
  ingressos.adicionar(IngressoCamarote('Festival Jazz', 300.00, 50.00, 'Setor A'));
  ingressos.adicionar(IngressoPromocional('Cinema Especial', 60.00, 15.00));
  ingressos.adicionar(IngressoVip('Show Pop', 180.00, 70.00));

  print('--- Impressão dos ingressos ---');
  ingressos.imprimirItens();

  print('\n--- Valor final via interface ---');
  for (var i in ingressos.obterItens()) {
    print('Valor Final: R\$ ${i.valorFinal().toStringAsFixed(2)}');
  }
}