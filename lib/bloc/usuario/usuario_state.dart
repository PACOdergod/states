part of 'usuario_bloc.dart';

class UsuarioState {
  final bool existeUsuario;
  final Usuario usuario;

  UsuarioState({Usuario user})
    : this.usuario = user?? new Usuario(),
      this.existeUsuario = (user != null) ? true : false;
  
}