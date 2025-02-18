mixin Sigilo {
  bool isHide = false;

  void ocultarse() => isHide = !isHide;
}

mixin ArcoYFlecha {
  void dispararFlecha() => print('Disparando flecha...');
}

abstract class Player {
  int vida;
  String nombre;
  TypePlayer typePlayer;

  Player(this.nombre, this.vida, this.typePlayer);

  void curarse();
  void morir();
  void batallar();
}

class Ladron extends Player with Sigilo {

  Ladron(String nombre, TypePlayer type) : super(nombre, 100, type);

  @override
  void curarse() {
    print('Te curaste 20 puntos');
    vida += 20;
  }

  @override
  void ocultarse() {
    super.ocultarse();
    print(isHide ? 'Te ocultaste' : 'No estás oculto');
  }

  @override
  void morir() {
    print('Moriste');
    vida = 0;
  }

  @override
  void batallar() => print('Luchando...');
}

class Arquero extends Player with ArcoYFlecha {

  Arquero(String nombre, TypePlayer type) : super(nombre, 100, type);

  @override
  void curarse(){
    print('Te curaste 10 puntos');
    vida += 10;
  }

  @override
  void morir() {
    print('Moriste');
    vida = 0;
  }

  @override
  void batallar() => print('Luchando...');
}

enum TypePlayer {
  Paladin,
  Mago,
  Brujo,
  Picaro,
  Guerrero
}


main() {

  print('Bienvenido al juego de aventuras y peleas epicas');
  final ladron = Ladron("Rata", TypePlayer.Guerrero);
  ladron..batallar()..curarse()..ocultarse()..curarse()..ocultarse()..batallar()..morir();

  //final arquero = Arquero('Archer', TypePlayer.Paladin);
  // arquero..batallar()..curarse()..curarse()..dispararFlecha()..morir();
}