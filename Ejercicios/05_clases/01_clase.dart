import 'classes/persona.dart';

main() {
  final persona = Persona();
  persona..nombre = 'Jorge'
         ..edad = 28;
         //..bio = 'Nació en Barranquilla';
  persona.bio = 'Cambié esto por acá';
  print(persona);
}