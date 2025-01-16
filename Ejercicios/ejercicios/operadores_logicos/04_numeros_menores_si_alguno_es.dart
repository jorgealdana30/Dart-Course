import 'dart:io';

main() {

  stdout.writeln('Escribe primer numero');
  int number1 = int.parse(stdin.readLineSync() ?? '');

  stdout.writeln('Escribe segundo numero');
  int number2 = int.parse(stdin.readLineSync() ?? '');

  stdout.writeln('Escribe tercer numero');
  int number3 = int.parse(stdin.readLineSync() ?? '');

  if (number1 < 9 || number2 < 9 || number3 < 9) {
    print('Alguno de los numeros es menor a 10');
  }
}