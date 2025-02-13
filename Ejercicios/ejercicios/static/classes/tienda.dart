class Tienda {

  static int productos = 0;
  static Map<int, dynamic> listadoProductos = {};

  static Map<int, dynamic> crearProducto (String nombre, int cantidad, int precio) {
      listadoProductos[productos] = {'nombre': nombre, 'cantidad': cantidad, 'precio': precio };
      productos++;
      return listadoProductos;
  }
}