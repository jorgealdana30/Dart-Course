import '../shared/utils/read_and_write.dart';

void main() {
  List<String> words = ['arbol', 'flor', 'estrella', 'amanecer', 'viento'];

  for (String word in words) {
    List<String> vowels = word.split('');
    ReadAndWrite.writeConsole(
        'La palabra $word tiene ${countVowels(vowels)} vocales');
  }
}

bool isAVowel(String vowel) {
  return vowel == 'a' ||
      vowel == 'e' ||
      vowel == 'i' ||
      vowel == 'o' ||
      vowel == 'u';
}

int countVowels(List<String> vowels) {
  int countVowels = 0;
  for (String vowel in vowels) {
    if (!isAVowel(vowel)) continue;
    countVowels += 1;
  }
  return countVowels;
}
