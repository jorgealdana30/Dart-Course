import '../../shared/utils/read_and_write.dart';

void main() {
  int number = ReadAndWrite.readNumber('Ingresa un numero');
  int min = ReadAndWrite.readNumber('Ingresa un numero minimo');
  int max = ReadAndWrite.readNumber('Ingresa un numero maximo');

  print(estaEnRango(number, min, max)
      ? 'El numero está en rango'
      : 'El numero NO está en rango');
}

bool estaEnRango(int number, int min, int max) {
  return number >= min && number <= max;
}
