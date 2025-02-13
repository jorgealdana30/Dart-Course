import 'classes/persona.dart';

main() {
  final persona = Persona(28, 'Jorge');
  //..bio = 'Nació en Barranquilla';
  persona.bio = 'Cambié esto por acá';
  print(persona);
}
