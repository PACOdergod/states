

class Usuario {
  
  final String nombre;
  final int edad;
  final List<String> profesiones;

  Usuario({ this.nombre, this.edad, this.profesiones });

  copyWith({
    String nombre,
    int edad,
    List<String> profesiones
  }) => Usuario(
    nombre: nombre?? this.nombre,
    edad: edad?? this.edad,
    profesiones: profesiones?? this.profesiones,
  );

  addProfesion(String profesion) {

    var profesiones = this.profesiones;

    // var profesiones = user.profesiones;
    profesiones.add(profesion);
    return copyWith(profesiones: profesiones);
  }
}