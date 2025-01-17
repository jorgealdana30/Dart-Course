import '../../shared/utils/read_and_write.dart';

main() {
  int limite = ReadAndWrite.readNumber('Ingresa un numero');
  int count = 0;
  int suma = 0;
  while (suma <= limite) {
    count++;
    suma += count;
    ReadAndWrite.writeConsole('$suma');
  }

  ReadAndWrite.writeConsole('La suma es de: $suma');
}
