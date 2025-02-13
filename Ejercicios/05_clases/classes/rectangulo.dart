class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo;

  factory Rectangulo(int base, int altura) {
    if (base == altura) return Rectangulo.cuadrado(base);
    return Rectangulo.rectangulo(base, altura);
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = "Cuadrado";
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = "Rectangulo";
  }

  @override
  String toString() =>
      {'Base': base, 'Altura': altura, 'Area': area, 'Tipo': tipo}.toString();
}
