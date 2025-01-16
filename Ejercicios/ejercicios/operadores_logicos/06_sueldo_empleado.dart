import 'dart:io';

main() {

  stdout.writeln('Escribe sueldo del empleado');
  int sueldo = int.parse(stdin.readLineSync() ?? '');

  stdout.writeln('Escribe años de antiguedad del empleado');
  int antiguedad = int.parse(stdin.readLineSync() ?? '');

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