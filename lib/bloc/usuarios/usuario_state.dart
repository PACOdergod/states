part of 'usuario_cubit.dart';

@immutable
abstract class UsuarioState {}

class UsuarioInitial extends UsuarioState {
  final existeUsuario = false;

  @override
  String toString() => 'Usuario inicial, no existe usuario';
}

class UsuarioActivo extends UsuarioState {

  final existeUsuario = true;
  final Usuario usuario;

  UsuarioActivo(this.usuario);
}
