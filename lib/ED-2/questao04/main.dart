import 'usuario.dart';

void main() {
  Usuario u1 = Usuario.criar('Carlos Mendes', 'carlos@email.com');
  Usuario u2 = Usuario.criar('Fernanda Lima', 'fernanda@email.com', 'Fê');

  print('=== Perfis ===');
  u1.exibirPerfil();
  u2.exibirPerfil();
}