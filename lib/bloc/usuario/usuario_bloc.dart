import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';

part 'usuario_state.dart';
part 'usuario_events.dart';

class UsuarioBloc extends Bloc<UsuarioEvents, UsuarioState>{
  UsuarioBloc(): super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvents event) {
    
  }
  
}