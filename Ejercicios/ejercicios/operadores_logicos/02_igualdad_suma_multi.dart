import 'dart:io';

main() {

  stdout.writeln('Escribe primer numero');
  int number1 = int.parse(stdin.readLineSync() ?? '');

  stdout.writeln('Escribe segundo numero');
  int number2 = int.parse(stdin.readLineSync() ?? '');

  stdout.writeln('Escribe tercer numero');
  int number3 = int.parse(stdin.readLineSync() ?? '');

  if (number1 == number2 && number2 == number3)
    print('''
    La suma de los dos primeros numeros es: ${number1 + number2} 
    La multiplicación de la suma y el numero tres es de: ${(number1 + number2) * number3}
    ''');
}