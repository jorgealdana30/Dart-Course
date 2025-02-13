class Vehiculo {
  int? ruedas;
  String? tipo;

  Vehiculo._motocicleta(int ruedas) {
    this.ruedas = ruedas;
    this.tipo = "Motocicleta";
  }

  Vehiculo._carro(int ruedas) {
    this.ruedas = ruedas;
    this.tipo = "Carro";
  }

  Vehiculo._tractocamion(int ruedas) {
    this.ruedas = ruedas;
    this.tipo = "Tractocamión";
  }

  factory Vehiculo(int ruedas) {
    if (ruedas == 2) return Vehiculo._motocicleta(ruedas);
    if (ruedas == 4) return Vehiculo._carro(ruedas);
    if (ruedas == 8) return Vehiculo._tractocamion(ruedas);
    throw "No hay vehiculos registrados con esa cantidad de ruedas.";
  }

  @override
  String toString() => "El vehiculo es de tipo $tipo y tiene $ruedas ruedas.";
}
