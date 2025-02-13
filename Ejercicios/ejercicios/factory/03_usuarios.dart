import 'classes/usuario.dart';

main() {
  final jorge = Usuario("12345678", "Jorge");
  final andrea = Usuario("12343", "Andrea");
  final jorge2 = Usuario("12345678", "Jorge");

  print(jorge == jorge2);
  print(jorge == andrea);
}
