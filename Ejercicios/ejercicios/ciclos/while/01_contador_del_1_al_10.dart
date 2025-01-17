import '../../shared/utils/read_and_write.dart';

main() {
  int contador = 1;

  while (contador <= 10) {
    ReadAndWrite.writeConsole('$contador');
    contador++;
  }
}
