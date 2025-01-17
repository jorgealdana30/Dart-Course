import '../../shared/utils/read_and_write.dart';

main() {
  List<String> palabras = ['hola', 'mundo', 'dart', 'flutter'];
  List<String> palabrasMayus = [];
  for (String palabra in palabras) {
    palabrasMayus.add(palabra.toUpperCase());
  }

  for (String mayus in palabrasMayus) {
    ReadAndWrite.writeConsole(mayus);
  }
}
