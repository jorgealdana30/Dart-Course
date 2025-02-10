import 'dart:math';

main() {
  Future<int> sumaFuture = Future.delayed(Duration(seconds: 1), () {
    return Random().nextInt(100);
  });

  sumaFuture.then((valor) => print('$valor * 2: ${valor * 2}'));
}