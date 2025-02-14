class Usuario {
  String? nombre;
  String? cedula;

  static final Map<String, Usuario> _mapUsuarios = {};

  Usuario._(String nombre, String cedula) {
    this.nombre = nombre;
    this.cedula = cedula;
  }

  factory Usuario(String cedula, String nombre) {
    if (_mapUsuarios.containsKey(cedula)) return _mapUsuarios[cedula]!;
    final usuario = Usuario._(cedula, nombre);
    _mapUsuarios[cedula] = usuario;
    return usuario;
  }
}
