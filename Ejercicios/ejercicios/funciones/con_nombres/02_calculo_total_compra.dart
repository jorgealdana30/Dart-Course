import '../../shared/utils/read_and_write.dart';

void main() {
  double precio = ReadAndWrite.readDouble('Ingrese precio del producto');
  int cantidad = ReadAndWrite.readNumber('Ingrese cantidad');
  double? descuento =
      ReadAndWrite.readDoubleOrNull('Ingrese descuento si existe');

  ReadAndWrite.writeConsole(descuento == null
      ? 'El total sin descuento es de ${calcularCosto(precio: precio, cantidad: cantidad)}'
      : 'El total con descuento es de: ${calcularCosto(precio: precio, cantidad: cantidad, descuento: descuento)}');
}

double calcularCosto(
    {required double precio, required int cantidad, double? descuento}) {
  return descuento == null
      ? (precio * cantidad)
      : ((precio * cantidad) - ((precio * cantidad) * descuento));
}
