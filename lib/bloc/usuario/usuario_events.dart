part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvents {}

class ActivarUsiario extends UsuarioEvents {
  final Usuario usuario;

  ActivarUsiario(this.usuario);
}

class CambiarEdad extends UsuarioEvents {
  final int nuevaEdad;

  CambiarEdad(this.nuevaEdad);
}

class AgregarProfesion extends UsuarioEvents {
  final String nuevaProfesion;

  AgregarProfesion(this.nuevaProfesion);
}

class BorrarUsuario extends UsuarioEvents {
  
}