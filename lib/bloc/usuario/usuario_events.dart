part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvents {}

class ActivarUsiario extends UsuarioEvents {
  final Usuario usuario;

  ActivarUsiario(this.usuario);
}