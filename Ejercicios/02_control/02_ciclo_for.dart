import '../ejercicios/shared/utils/read_and_write.dart';

main() {
  int numero = ReadAndWrite.readNumber('Escribe un numero');

  for (int i = 1; i <= 10; i++) print('2 * $i = ${numero * i}');
}
