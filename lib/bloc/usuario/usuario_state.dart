part of 'usuario_bloc.dart';

class UsuarioState {
  final bool existeUsuario;
  final Usuario usuario;

  UsuarioState({Usuario user}) : 
    this.usuario = user?? new Usuario(),
    this.existeUsuario = (user != null) ? true : false;
  
  UsuarioState copyWith({Usuario usuario}) => UsuarioState(
    user: usuario ?? this.usuario
  );

  UsuarioState estadoInicial()=> new UsuarioState();
}