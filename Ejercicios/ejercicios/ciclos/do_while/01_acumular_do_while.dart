import '../../shared/utils/read_and_write.dart';

main() {
  int suma = 0;
  int number = 0;
  do {
    number = ReadAndWrite.readNumber(
        'Ingresa un numero (9999 finaliza el programa):');
    if (number == 9999) {
      ReadAndWrite.writeConsole('Programa finalizado');
      return;
    }
    ;
    suma += number;
    ReadAndWrite.writeConsole('El acumulado es: $suma');
  } while (number != 9999);

  if (number < 0) {
    ReadAndWrite.writeConsole('El acumulado es menor a cero.');
    return;
  }

  if (number > 0) {
    ReadAndWrite.writeConsole('El numero es mayor a cero');
    return;
  }

  ReadAndWrite.writeConsole('El numero es igual a cero.');
}
