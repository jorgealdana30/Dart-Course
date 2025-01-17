import '../../shared/utils/read_and_write.dart';

main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> numerosPares = [];
  for (int numero in numeros) {
    if (numero % 2 != 0) continue;
    numerosPares.add(numero);
  }

  for (int par in numerosPares) {
    ReadAndWrite.writeConsole('$par');
  }
}
