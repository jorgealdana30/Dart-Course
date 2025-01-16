import 'dart:io';

import '../shared/utils/read_and_write.dart';

void main() {

  int findMin(int a, int b, int c) {
    return [a, b, c].reduce((value, element) => value < element ? value : element);
  }

  int findMax(int a, int b, int c) {
    return [a, b, c].reduce((value, element) => value > element ? value : element);
  }

  int num1 = ReadAndWrite.readNumber('Escribe primer numero');
  int num2 = ReadAndWrite.readNumber('Escribe segundo numero');
  int num3 = ReadAndWrite.readNumber('Escribe tercer numero');

  print('Número más pequeño: ${findMin(num1, num2, num3)}');
  print('-');
  print('Número más grande: ${findMax(num1, num2, num3)}');
}