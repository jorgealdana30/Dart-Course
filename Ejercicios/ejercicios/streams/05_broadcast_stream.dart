import 'dart:async';
import 'dart:math';

main() {
  //1. Manera de crear un broadcast
  Stream<int> numbers =
      Stream.periodic(Duration(seconds: 1), (index) => index + 1)
          .take(10)
          .asBroadcastStream();

  //2. Manera de crear un broadcast
  //final numbers2 = StreamController<int>.broadcast();

  numbers.listen((number) => print('Numero: ${number}'));
  numbers.listen(
      (number) => print('El cuadrado del mismo numero es: ${pow(number, 2)}'));
}
