import '../shared/utils/read_and_write.dart';

void main() {

  double base = ReadAndWrite.readDouble('Ingrese la base del triangulo');
  double altura = ReadAndWrite.readDouble('Ingrese la altura del triangulo');

  print('El area del rectangulo es: ${calcularArea(base, altura)}');
}

double calcularArea(double base, double altura) {
  return base * altura;
}