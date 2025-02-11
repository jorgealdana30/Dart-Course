import 'dart:async';
import 'dart:io';

main() {
  final streamController = StreamController<String>();

  streamController.stream.listen((data) => print('Nombre: $data'),
      onDone: () => print('Nombre guardado con exito'));

  print('Ingresa tu nombre: ');
  streamController.sink.add(stdin.readLineSync() ?? '');
  streamController.sink.close();
}
