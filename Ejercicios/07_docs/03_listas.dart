import 'dart:math';

main() {
  List<int> lista1 = [1,2,3,4,5,6,7,8,9,10];
  List<int> lista2 = [];
  List<int> lista3 = [3,2,1,5,-10,1,40,203,102,10,21,1];
  List<String> listaNombres = ['Jorge', 'Andrea'];

  print('Length: ${lista1.length}');
  print('First: ${lista1.first}'); //lista[0]
  print('Last: ${lista1.last}'); //lista[liasta.lenght - 1]
  print('isEmpty: ${lista1.isEmpty}');
  print('isNotEmpty: ${lista2.isNotEmpty}');
  print('asMap: ${listaNombres.asMap()}');
  print('asMap: ${listaNombres.asMap()[1]}');
  print('Reversed: ${listaNombres.reversed}');
  print('Take: ${lista3.take(3).toList()}');
  print('Where: ${lista3.where((element) => element == 1)}');
  print('Map: ${lista3.map((element) => element / 2)}');
  print('IndexOf: ${lista3.indexOf(-10)}');
  print('Expand: ${lista3.expand((element) => [3,5,3,5])}');
  print('IndexWhere: ${lista3.indexWhere((element) => element >= 100)}');
  print('Remove: ${lista3.remove(-10)}');
  print('RemoveAt: ${lista3.removeAt(3)}');
  print('RemoveLast: ${lista3.removeLast()}');
  lista3.shuffle();
  print('Shuffle: ${lista3}');
  lista3.sort();
  print('Sort: ${lista3}');
  lista3.ski
  print('Every: ${lista3.every((element) => element >= 0)}'); //todos deben cumplir la condicion para que sea true

  



}