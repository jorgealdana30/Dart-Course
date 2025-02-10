import 'dart:math';

main() {
  randomNumber().then((valor) {
    sum5(valor * 3).then((valor2) {
      print(valor2);
    });
  });
}

Future<int> randomNumber() => Future.delayed(Duration(seconds: 1), () => Random().nextInt(100));

Future<int> sum5(int number) => Future.delayed(Duration(seconds: 1), () => number + 5);