import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';

part 'usuario_state.dart';

class UsiarioCubit extends Cubit<UsuarioState> {
  UsiarioCubit() : super(UsuarioInitial());
}
