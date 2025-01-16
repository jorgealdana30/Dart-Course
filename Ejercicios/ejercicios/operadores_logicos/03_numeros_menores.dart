import 'dart:io';

main() {

  stdout.writeln('Escribe primer numero');
  int number1 = int.parse(stdin.readLineSync() ?? '');

  stdout.writeln('Escribe segundo numero');
  int number2 = int.parse(stdin.readLineSync() ?? '');

  stdout.writeln('Escribe tercer numero');
  int number3 = int.parse(stdin.readLineSync() ?? '');

  if (number3 > 9)
    return;

  if (number2 > 9)
    return;

  if(number3 > 9)
    return;

  print('Todos los numeros son menores a 10');
}