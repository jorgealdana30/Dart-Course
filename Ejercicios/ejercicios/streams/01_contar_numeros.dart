main() {
  Stream<int> countNumbers(int number) async* {
    for (int i = 1; i <= number; i++) {
      await Future.delayed(Duration(milliseconds: 300));
      yield i;
    }
  }

  countNumbers(100).listen(print);
}
