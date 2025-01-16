import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {
  int number1 = ReadAndWrite.readNumber('Escribe primer numero');
  int number2 = ReadAndWrite.readNumber('Escribe primer numero');
  int number3 = ReadAndWrite.readNumber('Escribe primer numero');

  if (number1 < 9 || number2 < 9 || number3 < 9) {
    print('Alguno de los numeros es menor a 10');
  }
}