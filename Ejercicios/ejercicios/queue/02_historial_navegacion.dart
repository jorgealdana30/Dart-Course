import 'dart:collection';

Queue<String> history = Queue();

main() {
  visitPage('https://www.udemy.com/');
  visitPage('https://www.tutorialesprogramacionya.com/');
  visitPage('https://exercism.org/tracks/dart');

  showHistory();
  backPage();
  backPage();
  showHistory();
}

void visitPage(String url) => history.add(url);

void backPage() => history.removeLast();

void showHistory() => print(history);