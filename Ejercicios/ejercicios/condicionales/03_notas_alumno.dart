import 'dart:io';

main () {
  stdout.writeln('Escribe primera nota: ');
  double nota1 = double.parse(stdin.readLineSync() ?? '0.0');

  stdout.writeln('Escribe Segunda nota: ');
  double nota2 = double.parse(stdin.readLineSync() ?? '0.0');

  stdout.writeln('Escribe tercera nota: ');
  double nota3 = double.parse(stdin.readLineSync() ?? '0.0');

  double promedio = (nota1 + nota2 + nota3) / 3;

  if (promedio >= 7)
    print('Promocionado');
}