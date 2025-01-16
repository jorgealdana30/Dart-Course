import 'dart:io';

import '../shared/utils/read_and_write.dart';

main () {
  double nota1 = ReadAndWrite.readDouble('Escribe primera nota: ');
  double nota2 = ReadAndWrite.readDouble('Escribe segunda nota: ');
  double nota3 = ReadAndWrite.readDouble('Escribe tercera nota: ');

  double promedio = (nota1 + nota2 + nota3) / 3;

  if (promedio < 4){
    print('Reprobado');
    return;
  }

  if(promedio >= 4 && promedio < 7) {
    print('Regular');
    return;
  }

  print('Promocionado');
}