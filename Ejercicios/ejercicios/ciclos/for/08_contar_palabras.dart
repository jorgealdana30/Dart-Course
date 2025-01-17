import '../../shared/utils/read_and_write.dart';

main() {
  List<String> words = ['elefante', 'gato', 'cocodrilo', 'pez', 'hipopótamo'];
  int countWordsMoreThanFive = 0;

  for (String word in words) {
    if (word.length < 5) continue;
    countWordsMoreThanFive += 1;
  }

  ReadAndWrite.writeConsole(
      'Cantidad palabras con más de 5 letras: $countWordsMoreThanFive');
}
