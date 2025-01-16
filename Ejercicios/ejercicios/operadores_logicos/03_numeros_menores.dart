import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {

  int number1 = ReadAndWrite.readNumber('Escribe primer numero');
  int number2 = ReadAndWrite.readNumber('Escribe segundo numero');
  int number3 = ReadAndWrite.readNumber('Escribe tercer numero');

  if (number1 > 9)
    return;

  if (number2 > 9)
    return;

  if(number3 > 9)
    return;

  print('Todos los numeros son menores a 10');
}