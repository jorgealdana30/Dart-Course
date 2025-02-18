mixin Cantante {

  void cantar() => print('estoy cantando...');
}

class Persona with Cantante {}

class Pajaro with Cantante {}

main () {

  print('------- Persona -------');
  final persona = Persona();
  persona.cantar();

  print('------- Pajaro -------');
  final pajaro = Pajaro();
  pajaro.cantar();
}