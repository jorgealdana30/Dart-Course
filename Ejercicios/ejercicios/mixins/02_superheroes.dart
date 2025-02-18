mixin Vuela {
  void volar() => print('Puedo volar');
}

mixin SuperFuerza {
  void superFuerza() => print('Tengo super fuerza');
}

mixin RayosLaser {
  void rayosLaser() => print('Tengo rayos laser');
}

abstract class SuperHero {
  void mostrarHabilidades();
}

class IronMan extends SuperHero with Vuela, RayosLaser {
  void mostrarHabilidades() {
    volar();
    rayosLaser();
  }
}

class SuperMan extends SuperHero with Vuela, RayosLaser, SuperFuerza {
  @override
  void mostrarHabilidades() {
    volar();
    rayosLaser();
    superFuerza();
  }
}

main() {

  print('--------- Superman ---------');
  final superman = SuperMan();
  superman.mostrarHabilidades();

  print('--------- IronMan ---------');
  final ironMan = IronMan();
  ironMan.mostrarHabilidades();
}