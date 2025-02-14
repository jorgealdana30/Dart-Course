import 'dart:math';

main() {
  print('Descargando archivo...');
  downloadFile().then(print).catchError(print);
}

Future<String> downloadFile() => Future.delayed(
    Duration(seconds: 4),
    () => Random().nextInt(100) >= 50
        ? 'Descarga completada: archivo.pdf'
        : Future.error('Error al descargar el archivo, intentalo nuevamente'));
