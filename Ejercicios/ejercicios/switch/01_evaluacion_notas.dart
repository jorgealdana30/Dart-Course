import '../shared/utils/read_and_write.dart';

main() {
  String nota =
      ReadAndWrite.readString('Ingrese la calificación (A, B, C, D, E)');

  switch (nota) {
    case 'A':
      ReadAndWrite.writeConsole('Excelente!');
      break;

    case 'B':
      ReadAndWrite.writeConsole('Bueno!');
      break;

    case 'C':
      ReadAndWrite.writeConsole('Regular');
      break;

    case 'D':
      ReadAndWrite.writeConsole('Deficiente');
      break;

    case 'E':
      ReadAndWrite.writeConsole('Insuficiente');
      break;

    default:
      ReadAndWrite.writeConsole('Nota no valida');
  }
}
