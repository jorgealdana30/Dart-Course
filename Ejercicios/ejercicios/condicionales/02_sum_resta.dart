import 'dart:io';

main () {
  stdout.writeln('Ingresa el primer numero: ');
  int number1 = int.parse(stdin.readLineSync() ?? '0');
  stdout.writeln('Ingresa el segundo numero: ');
  int number2 = int.parse(stdin.readLineSync() ?? '0');

  if (number1 > number2){
    print('La suma es: ${number1 + number2}');
    print('La resta es: ${number1 - number2}');
    return;
  }
  print('La multiplicacion es: ${number1 * number2}');
  print('La division es: ${number1 / number2}');
}