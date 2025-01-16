import 'dart:io';

import '../shared/utils/read_and_write.dart';

main () {
  String? dia = ReadAndWrite.readString('Escribe un día');
  String? mes = ReadAndWrite.readString('Escribe un mes');

  if (dia == '25' && mes == '12')
    print('Es navidad!!!!');
}