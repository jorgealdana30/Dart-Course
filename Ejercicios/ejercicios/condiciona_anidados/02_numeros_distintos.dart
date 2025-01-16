import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {
  int number1 = ReadAndWrite.readNumber('Ingresa el primer numero: ');
  int number2 = ReadAndWrite.readNumber('Ingresa el segundo numero: ');
  int number3 = ReadAndWrite.readNumber('Ingresa el tercer numero: ');

  if (number1 > number2 && number1 > number3){
    print('Numero 1 es el mayor');
    return;
  }

  if (number2 > number1 && number2 > number3){
    print('Numero 2 es el mayor');
    return;
  }

  print('Numero 3 es el mayor');
}