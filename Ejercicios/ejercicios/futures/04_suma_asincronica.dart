main() {
  divideAsync(6, 0).then(print).catchError(print);
}

Future<int> divideAsync(int number1, int number2) => Future.delayed(
    Duration(seconds: 2),
    () => number2 == 0
        ? Future.error('No se puede dividir entre cero')
        : number1 ~/ number2);
