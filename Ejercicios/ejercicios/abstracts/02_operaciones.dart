import '../shared/utils/read_and_write.dart';

abstract class Operacion {
  int valor1 = 0;
  int valor2 = 0;
  int resultado = 0;

  void operar();
  void imprimirResultado() => print(resultado);
}

class Suma extends Operacion {
  Suma() {
    valor1 = ReadAndWrite.readNumber('Ingrese numero 1');
    valor2 = ReadAndWrite.readNumber('Ingrese numero 2');
  }

  @override
  void operar() => resultado = valor1 + valor2;

  @override
  void imprimirResultado() => print("Resultado suma: $resultado");
}

class Resta extends Operacion {
  Resta() {
    valor1 = ReadAndWrite.readNumber('Ingrese numero 1');
    valor2 = ReadAndWrite.readNumber('Ingrese numero 2');
  }

  @override
  void operar() => resultado = valor1 - valor2;

  @override
  void imprimirResultado() => print('Resultado resta: $resultado');
}

main() {
  print('Suma:');
  final suma = Suma();
  suma.operar();
  suma.imprimirResultado();

  print('_______________');
  print('Resta: ');
  final resta = Resta();
  resta.operar();
  resta.imprimirResultado();
}
