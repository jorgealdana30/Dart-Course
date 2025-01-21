import '../ejercicios/shared/utils/read_and_write.dart';

main() {
  int suma = 0, cantidad = 0, valor = 0;
  double promedio = 0;
  do {
    valor = ReadAndWrite.readNumber('Ingrese un numero: ');
    if (valor == 0) continue;
    suma += valor;
    cantidad++;
  } while (valor != 0);

  if (cantidad == 0) {
    ReadAndWrite.writeConsole('No se ingresaron valores');
    return;
  }

  promedio = suma / cantidad;
  ReadAndWrite.writeConsole('El promedio de los valores es de: $promedio');
}
