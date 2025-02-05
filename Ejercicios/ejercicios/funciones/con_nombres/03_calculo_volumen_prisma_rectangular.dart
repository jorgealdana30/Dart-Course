import '../../shared/utils/read_and_write.dart';

void main() {
  double largo = ReadAndWrite.readDouble('Ingrese largo');
  double? ancho = ReadAndWrite.readDoubleOrNull('Ingresa ancho');
  double? alto = ReadAndWrite.readDoubleOrNull('Ingresa alto');

  ReadAndWrite.writeConsole('El volumen de un prisma rectangular es de: ${calcularVolumen(largo: largo, alto: alto, ancho: ancho)}');
}

double calcularVolumen({
  required double largo,
  double? ancho = 1,
  double? alto = 1
}) {
  return largo * ancho! * alto!;
}