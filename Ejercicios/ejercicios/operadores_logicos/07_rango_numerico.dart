import 'dart:io';

void main() {
  int readNumber(String prompt) {
    stdout.writeln(prompt);
    return int.parse(stdin.readLineSync() ?? '');
  }

  int findMin(int a, int b, int c) {
    return [a, b, c].reduce((value, element) => value < element ? value : element);
  }

  int findMax(int a, int b, int c) {
    return [a, b, c].reduce((value, element) => value > element ? value : element);
  }

  int num1 = readNumber('Escribe primer numero');
  int num2 = readNumber('Escribe segundo numero');
  int num3 = readNumber('Escribe tercer numero');

  print('Número más pequeño: ${findMin(num1, num2, num3)}');
  print('-');
  print('Número más grande: ${findMax(num1, num2, num3)}');
}