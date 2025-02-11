main() async {
  print('Obteniendo datos del sevridor...');
  print(await obtenerDatos());
  print('Datos obtenidos correctamente');
}

Future<Map<String, String>> obtenerDatos() async => Future.delayed(
    Duration(seconds: 2), () => {'nombre': 'Jorge', 'edad': '28'});
