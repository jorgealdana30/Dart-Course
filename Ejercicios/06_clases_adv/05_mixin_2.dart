mixin Volador {
  void volar() => print('Estoy volando.');
}

mixin Acuatico {
  void navegar() => print('Estoy navegando.');
}

class Vehiculo {
  void mover() => print('Me estoy moviendo.');
}

class Avion extends Vehiculo with Volador {}

class Barco extends Vehiculo with Acuatico {}

class HidroAvion extends Vehiculo with Volador, Acuatico {}

main () {
  print('---Avion---');
  final avion = Avion();
  avion.mover();
  avion.volar();

  print('---Barco---');
  final barco = Barco();
  barco.mover();
  barco.navegar();

  print('---Hidro Avion---');
  final hidroAvion = HidroAvion();
  hidroAvion.mover();
  hidroAvion.navegar();
  hidroAvion.volar();
}