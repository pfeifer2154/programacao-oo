class Televisao {
  int _canal;
  int _volume;

  Televisao(this._canal, this._volume);

  void setCanal(int canal) => _canal = canal;
  void setVolume(int volume) => _volume = volume;
  int get canal => _canal;
  int get volume => _volume;

  void exibir() {
    print('Canal: $_canal | Volume: $_volume');
  }
}