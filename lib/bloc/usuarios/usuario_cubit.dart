import 'dart:math';

import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario user){
    emit( new UsuarioActivo(user) );
  }

  loguot() => emit(UsuarioInitial());

  cambiarEdadRandom() {
    if (state is UsuarioInitial) return;
    
    final currentState = state;
    var rdm = new Random();
    
    if (currentState is UsuarioActivo) {
      final newUser = currentState.usuario.copyWith(edad:rdm.nextInt(50));
      emit(UsuarioActivo(newUser));
    }
  }

  agregarProfesion(String profesion) {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final prfesions = currentState.usuario.profesiones;
      prfesions.add(profesion);
      final newUser = currentState.usuario.copyWith(profesiones: prfesions);
      emit(UsuarioActivo(newUser));
    }
  }
}
