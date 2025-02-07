class HighScores {
  HighScores(this.scores);

  List<int> scores;

  int latest() => scores.last;

  List<int> sortList() => scores.toList()..sort();

  int personalBest() => sortList().last;

  List<int> personalTopThree() => sortList().reversed.take(3).toList();
}
