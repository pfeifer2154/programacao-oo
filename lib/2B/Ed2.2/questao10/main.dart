import 'ligavel.dart';

void main() {
  print('=== Smartphone ===');
  Smartphone smartphone = Smartphone('Samsung', 'Galaxy S24', 'Android 14');
  smartphone.ligar();
  smartphone.desligar();

  print('');

  print('=== Notebook ===');
  Notebook notebook = Notebook('Dell', 'Inspiron 15', 16);
  notebook.ligar();
  notebook.desligar();
}