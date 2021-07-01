import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // print(Get.arguments);
    final usuarioCtrl = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cargarUsuario( Usuario(
                  nombre: 'paco',
                  edad: 21
                ));

                Get.snackbar(
                  "Usuario establecido", 
                  "${usuarioCtrl.usuario.value.nombre}\n${usuarioCtrl.usuario.value.edad}",
                  backgroundColor: Colors.white,
                  boxShadows: [
                    BoxShadow( color: Colors.black, blurRadius: 10 )
                  ],
                  duration: Duration(seconds: 2),
                  onTap: (_) {
                    // Navigator.pop(context);
                    Get.toNamed('pagina1');
                  }
                );
              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cambiarEdad(30);
                Get.snackbar(
                  "Se cambio la edad", 
                  "${usuarioCtrl.usuario.value.edad}",
                  backgroundColor: Colors.white,
                  boxShadows: [
                    BoxShadow( color: Colors.black, blurRadius: 10 )
                  ],
                  duration: Duration(seconds: 2),
                  onTap: (_) {
                    // Navigator.pop(context);
                    Get.toNamed('pagina1');
                  }
                );
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesio', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.agregarProfesion("Profesion: ${usuarioCtrl.profesionsLength+1}");
                Get.snackbar(
                  "Se agrego nueva profesion", "",
                  backgroundColor: Colors.white,
                  boxShadows: [
                    BoxShadow( color: Colors.black, blurRadius: 10 )
                  ],
                  duration: Duration(seconds: 2),
                  onTap: (_) {
                    // Navigator.pop(context);
                    Get.toNamed('pagina1');
                  }
                );
              }
            ),

            MaterialButton(
              child: Text('Cambiar tema', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme( Get.isDarkMode? ThemeData.light() : ThemeData.dark() );
              }
            ),

          ],
        )
     ),
   );
  }
}