import 'dart:math';

main() {
  //Stream<int> valores = Stream.fromIterable(Iterable.generate(200, (index) => index + 1));
  Stream<int> valores =
      Stream.periodic(Duration(milliseconds: 500), (_) => Random().nextInt(100))
          .take(200);
  Stream<int> multiplosDe3 = valores.where((number) => multiplo3(number));
  multiplosDe3.listen((numero) {
    print(numero);
  });
}

bool multiplo3(int number) => number % 3 == 0;
