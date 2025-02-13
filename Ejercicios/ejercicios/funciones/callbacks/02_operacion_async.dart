main() {
  cargarDatos(mostrarMensaje);
}

void cargarDatos(Function(String) callback) {
  print('cargando datos...');
  Future.delayed(Duration(seconds: 3), () {
    callback('Datos cargados correctamente');
  });
}

void mostrarMensaje(String mensaje) {
  print(mensaje);
}
