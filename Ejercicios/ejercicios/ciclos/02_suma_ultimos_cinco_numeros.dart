import '../shared/utils/read_and_write.dart';

main() {
  int suma = 0;
  for (int i = 0; i < 10; i++) {
    int numero = ReadAndWrite.readNumber('Escribe un numero');
    if (i < 5) continue;
    suma += numero;
  }

  ReadAndWrite.writeConsole('La suma de los ultimos 5 numeros es: $suma');
}
