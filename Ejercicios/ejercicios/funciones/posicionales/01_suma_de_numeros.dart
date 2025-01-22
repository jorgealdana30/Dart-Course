import '../../shared/utils/read_and_write.dart';

void main() {
  ReadAndWrite.writeConsole('''
  Calculadora
  1. Suma
  2. Resta
  3. Multiplicacion
  4. Division
  ''');

  int option = ReadAndWrite.readNumber('Ingrese opción');
  int number1 = ReadAndWrite.readNumber('Ingresa primer numero');
  int number2 = ReadAndWrite.readNumber('Ingresa segundo numero');

  switch (option) {
    case 1:
      ReadAndWrite.writeConsole('La suma es de: ${sumarNumeros(number1, number2)}');
      break;

    case 2:
      ReadAndWrite.writeConsole('La resta es de: ${restarNumeros(number1, number2)}');
      break;

    case 3:
      ReadAndWrite.writeConsole('La multiplciación es de: ${multiNumeros(number1, number2)}');
      break;

    case 4:
      ReadAndWrite.writeConsole('La división es de: ${divideNumeros(number1, number2)}');
      break;
  }
}

int sumarNumeros(int number1, int number2) {
  return number1 + number2;
}

int restarNumeros(int number1, int number2) {
  return number1 - number2;
}

int multiNumeros(int number1, int number2) {
  return number1 * number2;
}

double divideNumeros(int number1, int number2) {
  return number1 / number2;
}