class InvalidNucleotideException implements Exception {}

class NucleotideCount {

  Map<String, int> count(String strand) {
    final Map<String, int> nucletoides = {'A': 0, 'C': 0, 'G': 0, 'T': 0};

    for (String letter in strand.toUpperCase().split('')){
      if(!nucletoides.containsKey(letter)) throw InvalidNucleotideException();
      nucletoides[letter] = nucletoides[letter]! + 1;
    }

    return nucletoides;
  }
}
