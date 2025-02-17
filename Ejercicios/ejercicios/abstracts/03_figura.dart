abstract class Figura {
  double calcularArea();
}

class Cuadrado extends Figura {
  double lado;

  Cuadrado(this.lado);

  @override
  double calcularArea() => this.lado * this.lado;
}

class Triangulo extends Figura {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  @override
  double calcularArea() => this.base * this.altura;
}

main() {
  final cuadrado = Cuadrado(50);
  print('Area cuadrado: ${cuadrado.calcularArea()}');

  final triangulo = Triangulo(50, 10);
  print('Area triangulo: ${triangulo.calcularArea()}');
}
