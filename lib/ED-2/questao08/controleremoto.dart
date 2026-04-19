import 'televisao.dart';

class ControleRemoto {
  Televisao _tv;

  ControleRemoto(this._tv);

  void aumentarVolume() {
    if (_tv.volume < 100) {
      _tv.setVolume(_tv.volume + 5);
      print('Volume aumentado para ${_tv.volume}');
    } else {
      print('Volume já está no máximo.');
    }
  }

  void diminuirVolume() {
    if (_tv.volume > 0) {
      _tv.setVolume(_tv.volume - 5);
      print('Volume diminuído para ${_tv.volume}');
    } else {
      print('Volume já está no mínimo.');
    }
  }

  void proximoCanal() {
    _tv.setCanal(_tv.canal + 1);
    print('Canal mudado para ${_tv.canal}');
  }

  void canalAnterior() {
    if (_tv.canal > 1) {
      _tv.setCanal(_tv.canal - 1);
      print('Canal mudado para ${_tv.canal}');
    } else {
      print('Já está no primeiro canal.');
    }
  }
}