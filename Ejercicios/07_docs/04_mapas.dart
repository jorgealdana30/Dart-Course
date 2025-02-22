main() {
  final persona = {
    'nombre': 'Jorge',
    'apellido': 'Aldana',
    'edad': 28
  };
  final direccion = {
    'ciudad': 'Barranquilla',
    'pais': 'Colombia'
  };

  print('Persona: $persona');
  print('Persona (length): ${persona.length}');
  print('Persona (keys): ${persona.keys}');
  print('Persona (values): ${persona.values}');

  persona.addAll(direccion);
  print('AddAll: $persona');

  //persona.remove('pais');
  //print('Remove: $persona');

  //persona.removeWhere((key, value) => key != 'nombre');
  //print('Remove Where $persona');

  print(persona);
  print('Map: ${persona.map((key, value) => MapEntry(key, value.toString().toUpperCase()))}');

  print(persona.cast());
}