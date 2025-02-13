import '../../shared/utils/read_and_write.dart';

void main() {
  String cadena1 = ReadAndWrite.readString('Ingrese primera frase');
  String cadena2 = ReadAndWrite.readString('Ingrese segunda frase');

  print(concatenarCadenas(cadena1, cadena2));
}

String concatenarCadenas(String cadena1, String cadena2) {
  return '$cadena1 $cadena2';
}
