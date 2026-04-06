import 'musica.dart';
import 'playlist.dart';

void main() {
  var m1 = Musica("Numb", "Linkin Park", 185);
  var m2 = Musica("Believer", "Imagine Dragons", 204);
  var m3 = Musica("Blinding Lights", "The Weeknd", 200);

  var playlist = Playlist("Favoritas", m1, m2, m3);

  playlist.exibirPlaylist();

  print("------------------");

  playlist.tocarPlaylist();
}