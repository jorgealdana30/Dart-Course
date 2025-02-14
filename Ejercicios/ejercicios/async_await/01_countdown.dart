main() async {
  await esperarYMostrar(3);
  print('Fin del main');
}

Future<void> esperarYMostrar(int seconds) async => Future.delayed(
    Duration(seconds: seconds), () => print('Se ha completado el tiempo'));
