import 'package:estados/bloc/usuario/usuario_bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: _Botones()
     ),
   );
  }
}

class _Botones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        MaterialButton(
          child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
          color: Colors.blue,
          onPressed: () {
            final newUser = Usuario(
              nombre: 'paco',
              edad: 21,
              profesiones: ["programador flutter"]
            );

            BlocProvider.of<UsuarioBloc>(context).add( ActivarUsiario(newUser) );
          }
        ),

        MaterialButton(
          child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
          color: Colors.blue,
          onPressed: () {
            BlocProvider.of<UsuarioBloc>(context).add( CambiarEdad(30) );
          }
        ),

        MaterialButton(
          child: Text('Añadir Profesion', style: TextStyle( color: Colors.white ) ),
          color: Colors.blue,
          onPressed: () {
            BlocProvider.of<UsuarioBloc>(context).add( AgregarProfesion("developer") );
          }
        ),

      ],
    );
  }
}