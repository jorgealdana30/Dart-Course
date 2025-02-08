/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

void imprimir(Object mensaje) => stdout.writeln(mensaje);

String leer() => stdin.readLineSync() ?? '';

Map<String, dynamic> crearUsuario({required String nombre, required String edad, required String pais}) => {
  'nombre': nombre,
  'edad': edad,
  'pais': pais
};

double deducciones (double salario) => salario * 0.15;
double salarioNeto (double salario) => salario - deducciones(salario);

void ajusteSalario(Map<String, dynamic> usuario, double salario) {
  usuario['salario']     = salario;
  usuario['deducciones'] = deducciones(salario);
  usuario['salarioNeto'] = salarioNeto(salario);
  imprimir(usuario);
}

void procesarUsuario(double salario) {
  imprimir('=========== Usuario =============');

  imprimir('¿Cúal es su nombre?');
  String nombre = leer();

  imprimir('¿Qué edad tienes?');
  String edad = leer();

  imprimir('¿En qué país naciste?');
  String pais = leer();

  final Map<String, dynamic> usuario = crearUsuario(nombre: nombre, edad: edad, pais: pais);
  imprimir('Usuario sin deducciones');
  imprimir( usuario );
  ajusteSalario(usuario, salario);
}

main() {
  procesarUsuario(1500);
  procesarUsuario(1800);
}

