import '../../shared/utils/read_and_write.dart';

void main() {

  String day = ReadAndWrite.readString('Ingrese un día');
  String month = ReadAndWrite.readString('Ingrese un mes');
  String year = ReadAndWrite.readString('Ingrese un año');

  print('Fecha formateada: ${formatDate(day, month, year)}');
}

String formatDate(String day, String month, String year) {
  return '$day/$month/$year';
}