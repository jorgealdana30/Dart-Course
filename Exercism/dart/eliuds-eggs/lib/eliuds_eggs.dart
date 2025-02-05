class EggCounter {
  int count(int eggs) => eggs.toRadixString(2).replaceAll('0', '').length;
}
