import '../shared/utils/read_and_write.dart';

main() {
  int positivos = 0, negativos = 0, multiplos15 = 0, acumuladoPares = 0;

  for (int i = 1; i <= 10; i++) {
    int number = ReadAndWrite.readNumber('Ingrese un numero: ');
    if (number > 0) positivos += 1;
    if (number < 0) negativos += 1;
    if (number % 15 == 0) multiplos15 += 1;
    if (number % 2 == 0) acumuladoPares += 1;
  }

  ReadAndWrite.writeConsole('''
    Positivos: $positivos
    Negativos: $negativos
    Multiplos de 15: $multiplos15
    Acumulado Par: $acumuladoPares
    ''');
}
