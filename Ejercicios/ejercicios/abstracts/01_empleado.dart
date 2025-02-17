import 'dart:io';

import '../shared/utils/read_and_write.dart';

abstract class Persona {
  String? nombre;
  int? edad;

  void cargarDatos() {
    nombre = ReadAndWrite.readString('Escriba su nombre:');
    edad = ReadAndWrite.readNumber('Escriba su edad');
  }

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Empleado extends Persona {
  int? sueldo;

  void cargarSueldo() {
    this.sueldo = ReadAndWrite.readNumberOrNull('Ingrese sueldo empleado');
  }

  void imprimirSueldo() => print("Sueldo es: $sueldo");
}

main() {
  final jorge = Empleado();
  jorge.cargarDatos();
  print('Ingrese el sueldo del empleado');
  jorge.cargarSueldo();
  jorge.imprimirNombre();
  jorge.imprimirSueldo();
}
