import 'classes/tienda.dart';

main() {
  print("Cantidad Productos en Tienda: ${Tienda.productos}");

  Tienda.crearProducto('Manzana', 5, 500);
  Tienda.crearProducto('Pera', 10, 300);
  Tienda.crearProducto('Tomate', 30, 200);

  print("Cantidad Productos en Tienda: ${Tienda.productos}");

  print("Productos: ${Tienda.listadoProductos}");
}