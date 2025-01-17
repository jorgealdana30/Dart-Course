import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {
  int number1 = ReadAndWrite.readNumber('Escribe primer numero');
  int number2 = ReadAndWrite.readNumber('Escribe segundo numero');
  int number3 = ReadAndWrite.readNumber('Escribe tercer numero');

  if (number1 == number2 && number2 == number3) print('''
    La suma de los dos primeros numeros es: ${number1 + number2} 
    La multiplicación de la suma y el numero tres es de: ${(number1 + number2) * number3}
    ''');
}
