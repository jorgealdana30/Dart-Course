main () {
  saludar('Hola', 'Jorge', 33);
}


//Al usar las llaves cuadradas le indicamos a Dart que los argumentos pueden tener valor por defecto o nulos

void saludar(String mensaje, [String nombre = 'Insertar nombre', int? edad]) {
  print('$mensaje, $nombre, $edad');
}