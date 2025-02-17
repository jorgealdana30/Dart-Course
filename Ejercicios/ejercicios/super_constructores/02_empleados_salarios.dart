abstract class Empleado {
  String nombre;
  int salarioBase;

  Empleado(this.nombre, this.salarioBase);

  int calcularSalario();
}

class EmpleadoFijo extends Empleado {
  EmpleadoFijo(String nombre, int sueldo) : super(nombre, sueldo);

  @override
  int calcularSalario() => salarioBase;
}

class EmpleadoXHoras extends Empleado {
  int horas;
  int tarifa;

  EmpleadoXHoras(String nombre, this.horas, this.tarifa)
      : super(nombre, tarifa);

  @override
  int calcularSalario() => horas * tarifa;
}

main() {
  final empleadoFijo = EmpleadoFijo('Jorge Aldana', 500000);
  print('Sueldo de ${empleadoFijo.nombre}: ${empleadoFijo.salarioBase}');

  final empleadoXHoras = EmpleadoXHoras('Andrea', 20, 28000);
  print(
      'Sueldo de ${empleadoXHoras.nombre}: ${empleadoXHoras.calcularSalario()}');
}
