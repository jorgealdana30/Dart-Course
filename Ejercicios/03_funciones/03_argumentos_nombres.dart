void main() {
  saludar(
    'Hola',
    veces: 20,
    nombre: 'Jorge',
  );
}

void saludar(String mensaje, {required String nombre, int veces = 10}) {
  print('$mensaje $nombre - $veces');
}
