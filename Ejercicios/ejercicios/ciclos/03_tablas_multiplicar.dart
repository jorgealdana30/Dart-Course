import '../shared/utils/read_and_write.dart';

main() {
  ReadAndWrite.writeConsole('Tablas de multiplicar: ');
  int number = ReadAndWrite.readNumber('Ingresa un numero: ');

  for (int i = 1; i <= 12; i++) {
    ReadAndWrite.writeConsole('$number * $i = ${number * i}');
  }
}
