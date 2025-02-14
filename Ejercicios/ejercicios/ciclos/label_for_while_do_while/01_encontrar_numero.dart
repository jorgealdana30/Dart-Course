import '../../shared/utils/read_and_write.dart';

main() {
  List<List<int>> matriz = [
    [0, 1, 2, 3, 4, 5, 7, 6, 8],
    [45, 12, 485, 1, 45, 65, 872],
    [1, 2, 3, 4, 56, 7, 4, 91, 6, 18]
  ];

  int searchNumber = ReadAndWrite.readNumber('Ingresa el numero a buscar: ');
  rowLoop:
  // for (int i = 0; i < matriz.length; i++){
  //   columnLoop:
  //   for (int j = 0; j < matriz[i].length; j++) {
  //     ReadAndWrite.writeConsole('Leyendo numero: ${matriz[i][j]}');
  //     if (matriz[i][j] == searchNumber) {
  //       ReadAndWrite.writeConsole('Se encontró numero $searchNumber');
  //       break rowLoop;
  //     }
  //   }
  // }

  rowLoop:
  for (List<int> filas in matriz) {
    columnLoop:
    for (int column in filas) {
      ReadAndWrite.writeConsole('Leyendo numero: $column');
      if (column == searchNumber) {
        ReadAndWrite.writeConsole('Se encontró numero $searchNumber');
        break rowLoop;
      }
    }
  }
}
