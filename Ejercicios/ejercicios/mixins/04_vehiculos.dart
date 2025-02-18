mixin Electrico {
  void tipo() => print('Tipo combustible: Electrico');
}

mixin Gasolina {
  void tipo() => print('Tipo combustible: Gasolina');
}

mixin Hibrido {
  void tipo() => print('Tipo combustible: Hibrido');
}

abstract class Vehiculo {
  void encender() => print('Encendiendo...');
  void recargarCombustible() => print('Recargando combustible...');
}

class Tesla extends Vehiculo with Electrico {}

class Moto extends Vehiculo with Gasolina {}

class AutoHibrido extends Vehiculo with Hibrido {}

main() {
  print('------- Tesla ------');
  final tesla = Tesla();
  tesla..tipo()..recargarCombustible()..encender();

  print('------- Moto ------');
  final moto = Moto();
  moto..tipo()..recargarCombustible()..encender();

  print('------- Hibrido ------');
  final hibrido = AutoHibrido();
  hibrido..tipo()..recargarCombustible()..encender();
}