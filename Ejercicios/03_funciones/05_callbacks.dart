main() {
  obtenerUsuario('5151561', (Map persona) {
    print(persona);
  });
}

void obtenerUsuario(String id, Function callback){
  Map persona = {
    'id' : id
  };

  callback(persona);
}