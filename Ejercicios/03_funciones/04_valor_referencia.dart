void main() {
  String nombre = 'jorge aldana';
  print(nombre);
  print(capitalizar(nombre));

  Map<String, String> persona = {
    'nombre': 'jorge aldana'
  };

  Map<String, String> persona2 = capitalizarMapa(persona);
  print(persona);
  print(persona2);
}

String capitalizar(String texto){
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {

  //romper referencia del mapa y que se cree uno nuevo
  mapa = {...mapa}; //{...mapa} es el operador spread, esparce la informacion de un mapa u objeto antes de que sea creado nuevo en la misma referencia
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  return mapa;
}

//todas las variables primitivas se envian por valor, se pueden modificar sin importar referencia
//los objetos clases, mapas, listas, sets, etc, se envian por referencia y se modifica, se modifica su valor en toda la ejecucion