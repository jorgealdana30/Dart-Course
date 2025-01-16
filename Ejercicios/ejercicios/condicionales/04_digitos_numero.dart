import 'dart:io';

main () {
  stdout.writeln('Ingresa un numero positivo del 1 al 999');
  int number = int.parse(stdin.readLineSync() ?? '0');

  if (number > 99){
    print('El numero tiene tres digitos');
    return;
  }

  if (number > 9) {
    print('El numero tiene dos digitos');
    return;
  }

  print('El numero tiene un solo digito');
}