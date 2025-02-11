import 'dart:math';

main() {
  print('Comenzando la descarga del archivo...');

  Stream<int> download() =>
      Stream.periodic(Duration(seconds: 1), (index) => index * 10).take(11);

  download().listen((progress) => print('Descargando $progress%'),
      onDone: () => print('Descarga completada'));
}
