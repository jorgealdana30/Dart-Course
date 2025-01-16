import 'dart:io';

main () {
  stdout.writeln('Escribe un día');
  String? dia = stdin.readLineSync();

  stdout.writeln('Escribe un mes');
  String? mes = stdin.readLineSync();

  if (dia == '25' && mes == '12')
    print('Es navidad!!!!');
}