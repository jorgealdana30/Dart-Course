import 'dart:async';

main() {
  final streamController = StreamController();

  streamController.stream.listen((data) => print('Despegando! $data'),
      onError: (error) => print('Error! $error'),
      onDone: () => print('Misión completada!'));

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston, tenemos un problema');
  streamController.sink.add('Apollo 14');

  streamController.sink.close();
  print('Fin del main');
}