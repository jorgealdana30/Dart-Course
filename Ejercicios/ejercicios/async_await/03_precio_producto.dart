import 'dart:math';

main() async {
  try {
    int precio = await obtenerPrecioProducto("normal");
    print('Valor total: $precio');
  } catch (e) {
    print(e);
  }
}

Future<int> obtenerPrecioProducto(String tipo) async => Future.delayed(
    Duration(seconds: 3),
    () => tipo == 'premium'
        ? Future.error('Producto no disponible')
        : Random().nextInt(100000));
