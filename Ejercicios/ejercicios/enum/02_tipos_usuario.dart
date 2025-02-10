main() {
  permisosUsuario(TipoUsuario.Administrador);
}

enum TipoUsuario {
  Administrador,
  Editor,
  Lector
}

void permisosUsuario(TipoUsuario tipo) {
  switch (tipo) {
    case TipoUsuario.Administrador: print('Puedes modificar todo'); break;
    case TipoUsuario.Editor: print('Solo puedes editar el contenido'); break;
    case TipoUsuario.Lector: print('Solo puedes leer el documento'); break;
  }
}