import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {
  int number =
      ReadAndWrite.readNumber('Ingresa un numero positivo del 1 al 999');

  if (number > 999) {
    throw 'El numero excede el limite de digitos';
  }

  if (number > 99) {
    print('El numero tiene tres digitos');
    return;
  }

  if (number > 9) {
    print('El numero tiene dos digitos');
    return;
  }

  print('El numero tiene un solo digito');
}
