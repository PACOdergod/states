
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuarios/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final bloc = BlocProvider.of<UsuarioCubit>(context, listen: false);

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
                final newUser = new Usuario(
                  nombre: "paco",
                  edad: 21,
                  profesiones: [
                    'Programador flutter'
                  ]
                );
                bloc.seleccionarUsuario(newUser);

              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                bloc.cambiarEdadRandom();
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                bloc.agregarProfesion("biker");
              }
            ),
          ],
        )
     ),
   );
  }
}