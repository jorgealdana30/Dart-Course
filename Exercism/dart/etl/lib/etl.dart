class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    Map<String, int> newMap = Map();
    legacy.forEach((key, value) {
      value.forEach((item) {
        newMap.addEntries(
            (<String, int>{item.toLowerCase(): int.parse(key)}.entries));
      });
    });
    return newMap;
  }
}
