import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';

part 'usuario_state.dart';
part 'usuario_events.dart';

class UsuarioBloc extends Bloc<UsuarioEvents, UsuarioState>{
  UsuarioBloc(): super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvents event)async* {
    if (event is ActivarUsiario) {
      yield state.copyWith(usuario: event.usuario);
    } 

    else if (event is CambiarEdad) {
      yield state.copyWith(usuario: state.usuario.copyWith( edad: event.nuevaEdad ));
    }

    else if (event is AgregarProfesion) {
      yield UsuarioState( user: state.usuario.addProfesion(event.nuevaProfesion) );
    }

    else if (event is BorrarUsuario) {
      yield state.estadoInicial();
    }

  }


  
}