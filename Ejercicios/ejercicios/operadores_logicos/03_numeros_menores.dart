import 'dart:io';

main() {

  int readNumber(String prompt) {
    stdout.writeln(prompt);
    return int.parse(stdin.readLineSync() ?? '');
  }

  int number1 = readNumber('Escribe primer numero');
  int number2 = readNumber('Escribe segundo numero');
  int number3 = readNumber('Escribe tercer numero');

  if (number1 > 9)
    return;

  if (number2 > 9)
    return;

  if(number3 > 9)
    return;

  print('Todos los numeros son menores a 10');
}