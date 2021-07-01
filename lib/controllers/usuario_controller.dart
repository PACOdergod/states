import 'package:get/get.dart';

import 'package:estados/models/usuario.dart';

class UsuarioController extends GetxController{

  var existeUsuario = false.obs;
  var usuario = new Usuario().obs;

  int get profesionsLength => this.usuario.value.profesiones.length;

  void cargarUsuario( Usuario user ){
    this.usuario.value = user;
    this.existeUsuario.value = true;
  }

  void cambiarEdad(int newAge){
    this.usuario.update((val) {
      val!.edad = newAge;
    });
  }

  void agregarProfesion(String prof){
    this.usuario.update((val) {
      val!.profesiones = [ ...val.profesiones, prof];
    });
  }
}