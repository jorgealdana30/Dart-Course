import 'dart:io';

import '../shared/utils/read_and_write.dart';

main() {

  int x = ReadAndWrite.readNumber('Escribe X');
  int y = ReadAndWrite.readNumber('Escribe Y');

  if (x > 0 && y > 0){
    print('La coordenada está en el primer cuadrante');
    return;
  }

  if (x < 0 && y > 0){
    print('La coordenada está en el segundo cuadrante');
    return;
  }

  if (x < 0 && y < 0){
    print('La coordenada está en el tercer cuadrante');
    return;
  }

  print('La coordenada está en el cuarto cuadrante');
}