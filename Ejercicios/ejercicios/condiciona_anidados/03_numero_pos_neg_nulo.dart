import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {
  int? number = ReadAndWrite.readNumberOrNull('Ingresa el primer numero: ');

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
