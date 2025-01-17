import '../../shared/utils/read_and_write.dart';

main() {
  int triangles =
      ReadAndWrite.readNumber('Escriba la cantidad de triangulos a leer');
  int count = 0;

  for (int i = 0; i < triangles; i++) {
    double base =
        ReadAndWrite.readDouble('Ingrese base del triangulo ${i + 1}');
    double altura =
        ReadAndWrite.readDouble('Ingrese altura del triangulo ${i + 1}');

    double superficial = calcSuperficie(base, altura);
    print('La superficial del triangulo es: $superficial');

    if (superficial > 12) count++;
  }

  print('La cantidad de triangulos con superficial mayor a 12 es: $count');
}

double calcSuperficie(double base, double altura) {
  return base * altura / 2;
}
