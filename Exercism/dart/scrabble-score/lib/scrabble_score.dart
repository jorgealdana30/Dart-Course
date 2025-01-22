const List<String> listOnePoint = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S','T'];
const List<String> listTwoPoints = ['D', 'G'];
const List<String> listThreePoints = ['B', 'C', 'M', 'P'];
const List<String> listFourPoints = ['F', 'H', 'V', 'W', 'Y'];
const List<String> listFivePoints = ['K'];
const List<String> listEightPoints = ['J', 'X'];
const List<String> listTenPoints = ['Q', 'Z'];

int score(String word) {
  int score = 0;
  List<String> letters = word.split('');
  for (String letter in letters) {
    score += checkScore(letter);
  }
  return score;
}

int checkScore(String letter){
  if (listOnePoint.contains(letter.toUpperCase())) return 1;
  if (listTwoPoints.contains(letter.toUpperCase())) return 2;
  if (listThreePoints.contains(letter.toUpperCase())) return 3;
  if (listFourPoints.contains(letter.toUpperCase())) return 4;
  if (listFivePoints.contains(letter.toUpperCase())) return 5;
  if (listEightPoints.contains(letter.toUpperCase())) return 8;
  if (listTenPoints.contains(letter.toUpperCase())) return 10;
  return 0;
}