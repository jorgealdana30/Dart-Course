main() async {
  await Future.wait([cargarImagen(), cargarDatos(), cargarTexto()]);
  print('Carga finalizada con exito');
}

Future<void> cargarImagen() async => Future.delayed(Duration(seconds: 2), () => print('Cargando imagen...'));
Future<void> cargarTexto() async => Future.delayed(Duration(seconds: 3), () => print('Cargando texto...'));
Future<void> cargarDatos() async => Future.delayed(Duration(seconds: 5), () => print('Cargando datos...'));