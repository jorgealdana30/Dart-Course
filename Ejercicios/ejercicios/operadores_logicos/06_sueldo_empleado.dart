import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {

  int sueldo = ReadAndWrite.readNumber('Escribe sueldo del empleado');
  int antiguedad = ReadAndWrite.readNumber('Escribe años de antiguedad del empleado');

  if (sueldo >= 500) {
    print('Sueldo sin cambios');
    return;
  }

  if(sueldo < 500 && antiguedad < 10){
    print('''
    El sueldo con aumento del 5% sería de: ${(sueldo * 0.05) + sueldo}
    ''');
    return;
  }

  print('''
    El sueldo con aumento del 20% sería de: ${(sueldo * 0.2) + sueldo}
    ''');
}