import '../../shared/utils/read_and_write.dart';

void main() {
  String nombre = ReadAndWrite.readString('Ingrese un nombre');
  String ciudad = ReadAndWrite.readString('Ingrese ciudad');
  String email = ReadAndWrite.readString('Ingrese email');
  int edad = ReadAndWrite.readNumber('Ingrese edad');
  
  ReadAndWrite.writeConsole(crearPerfil(nombre: nombre, ciudad: ciudad, email: email, edad: edad));
}

String crearPerfil({
  required String nombre,
  required String ciudad,
  required String email,
  required int edad,
}) {
  return '''
   Usuario Creado:
    *Nombre: $nombre
    *Ciudad: $ciudad
    *Edad: $edad
    *Email: $email
  ''';
}