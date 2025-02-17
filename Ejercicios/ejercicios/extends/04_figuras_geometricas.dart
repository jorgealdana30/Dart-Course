import 'dart:math';

class Figura {
  double calcularArea() => 0;
}

class Cuadrado extends Figura {
  double lado;

  Cuadrado(this.lado);

  @override
  double calcularArea() => this.lado * this.lado;
}

class Circulo extends Figura {
  double pi = 3.1416;
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() => pi * pow(radio, 2);
}

class Triangulo extends Figura {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  @override
  double calcularArea() => (base * altura) / 2;
}

main() {
  final cuadrado = Cuadrado(20);
  print('Area de un cuadrado: ${cuadrado.calcularArea()}');

  final circulo = Circulo(20);
  print('Area de un circulo: ${circulo.calcularArea()}');

  final triangulo = Triangulo(5, 3);
  print('Area de un triangulo: ${triangulo.calcularArea()}');
}
