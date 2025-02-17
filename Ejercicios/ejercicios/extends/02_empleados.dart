class Empleado {
  String? nombre;
  int? salario;

  void trabajar() => print('Trabajando... ${this.nombre}');
}

class Gerente extends Empleado {
  void dirigirReunion() => print('Dirigiendo reunion...');

  @override
  String? get nombre => 'Gerente';
}

class Desarrollador extends Empleado {
  void escribirCodigo() => print('Escribiendo codigo');

  @override
  String? get nombre => 'Desarrollador';
}

class Vendedor extends Empleado {
  void venderProducto() => print('Vendiendo producto');

  @override
  String? get nombre => 'Vendedor';
}

main() {
  final gerente = Gerente();
  final developer = Desarrollador();
  final vendedor = Vendedor();

  gerente.trabajar();
  gerente.dirigirReunion();

  developer.trabajar();
  developer.escribirCodigo();

  vendedor.trabajar();
  vendedor.venderProducto();
}
