import 'dart:io';

main() {
  stdout.writeln('Ingresa el primer numero: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '0');

  if (number == null) {
    print('El numero es nulo');
    return;
  }

  if (number > 0) {
    print('el numero es positivo');
    return;
  }

  print('El numero es negativo');
}