class Electrodomestico {
  String? marca;
  String? modelo;

  void encender() {}
}

class Lavadora extends Electrodomestico {
  void lavarRopa() => print('Lavando ropa...');

  @override
  void encender() => print('Encendiendo lavadora');
}

class Refrigerador extends Electrodomestico {
  void enfriar() => print('Enfriando comida...');

  @override
  void encender() => print('Encendiendo refrigerador');
}

class Microondas extends Electrodomestico {
  void calentarComida() => print('Calentando comida...');

  @override
  void encender() => print('Encendiendo microondas');
}

main() {
  final lavadora = Lavadora();
  final refri = Refrigerador();
  final microondas = Microondas();

  lavadora.encender();
  lavadora.lavarRopa();

  refri.encender();
  refri.enfriar();

  microondas.encender();
  microondas.calentarComida();
}
