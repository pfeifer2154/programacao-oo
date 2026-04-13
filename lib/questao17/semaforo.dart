class Semaforo {
  String corAtual;
  int tempoRestante;
  Semaforo(this.corAtual) : tempoRestante = 0 {
    _definirTempo();
  }

  void _definirTempo() {
    if (corAtual == "vermelho") {
      tempoRestante = 5;
    } else if (corAtual == "verde") {
      tempoRestante = 4;
    } else if (corAtual == "amarelo") {
      tempoRestante = 2;
    } else {
      throw Exception("Cor inválida");
    }
  }

  void trocarCor() {
    if (corAtual == "vermelho") {
      corAtual = "verde";
    } else if (corAtual == "verde") {
      corAtual = "amarelo";
    } else {
      corAtual = "vermelho";
    }
    _definirTempo();
  }

  void reduzirTempo() {
    tempoRestante--;
    if (tempoRestante <= 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    String emoji;
    if (corAtual == "vermelho") {
      emoji = "vermelho";
    } else if (corAtual == "verde") {
      emoji = "verde";
    } else {
      emoji = "amarelo";
    }
    print("Semáforo: $emoji ($corAtual) | Tempo: $tempoRestante");
  }
}