import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {
  int number1 = ReadAndWrite.readNumber('Ingresa el primer numero: ');
  int number2 = ReadAndWrite.readNumber('Ingresa el segundo numero: ');

  if (number1 > number2) {
    print('La suma es: ${number1 + number2}');
    print('La resta es: ${number1 - number2}');
    return;
  }
  print('La multiplicacion es: ${number1 * number2}');
  print('La division es: ${number1 / number2}');
}
