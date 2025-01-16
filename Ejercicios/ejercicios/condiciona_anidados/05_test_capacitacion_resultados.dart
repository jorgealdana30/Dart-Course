import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {
  int cantidadPreguntas = ReadAndWrite.readNumber('Ingresa la cantidad de preguntas');
  int cantidadAcertadas = ReadAndWrite.readNumber('Ingresa la cantidad de respuestas acertadas');

  double resultado = (cantidadAcertadas * 100) / cantidadPreguntas;

  if (resultado < 50) {
    print('Fuera de nivel');
    return;
  }

  if (resultado >= 50 && resultado < 75) {
    print('Nivel regular');
    return;
  }

  if (resultado >= 75 && resultado < 90) {
    print('Nivel medio');
    return;
  }

  print('Nivel Maximo');
}