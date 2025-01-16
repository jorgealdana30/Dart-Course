import 'dart:io';

main() {
  stdout.writeln('Ingresa la cantidad de preguntas');
  int cantidadPreguntas = int.parse(stdin.readLineSync() ?? '0');

  stdout.writeln('Ingresa la cantidad de respuestas acertadas');
  int cantidadAcertadas = int.parse(stdin.readLineSync() ?? '0');

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