import 'dart:io';

main() {
  stdout.writeln('Ingresa el primer numero: ');
  int number1 = int.parse(stdin.readLineSync() ?? '0');

  stdout.writeln('Ingresa el segundo numero: ');
  int number2 = int.parse(stdin.readLineSync() ?? '0');

  stdout.writeln('Ingresa el tercer numero: ');
  int number3 = int.parse(stdin.readLineSync() ?? '0');

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