import 'dart:io';

main() {

  stdout.writeln('Escribe X');
  int x = int.parse(stdin.readLineSync() ?? '');

  stdout.writeln('Escribe Y');
  int y = int.parse(stdin.readLineSync() ?? '');

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