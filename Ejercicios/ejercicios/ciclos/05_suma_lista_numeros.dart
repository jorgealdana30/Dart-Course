import '../shared/utils/read_and_write.dart';

main() {
  List<int> numbers = [10, 12, 5, 7, 10, 15, 478, 1, 15];
  int suma = 0;

  for (int number in numbers) {
    suma += number;
  }

  ReadAndWrite.writeConsole('La suma es: $suma');
}
