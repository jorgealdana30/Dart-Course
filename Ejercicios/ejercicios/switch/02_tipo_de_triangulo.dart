import '../shared/utils/read_and_write.dart';

main() {
  int lado1 = ReadAndWrite.readNumber('Ingrese primer lado del triangulo');
  int lado2 = ReadAndWrite.readNumber('Ingrese segundo lado del triangulo');
  int lado3 = ReadAndWrite.readNumber('Ingrese tercer lado del triangulo');

  switch (lado1 == lado2 && lado2 == lado3
      ? 'equilatero'
      : lado1 == lado2 || lado1 == lado3 || lado2 == lado3
          ? 'isoceles'
          : 'escaleno') {
    case 'equilatero':
      ReadAndWrite.writeConsole('Equilatero');
      break;

    case 'isoceles':
      ReadAndWrite.writeConsole('Isoceles');
      break;

    case 'escaleno':
      ReadAndWrite.writeConsole('Escaleno');
      break;
  }
}
