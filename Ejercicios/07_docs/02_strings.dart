main() {

  String nombre = 'Jorge';
  String apellido = 'Aldana';

  String nombreCompleto = "$nombre $apellido";

  print('Length: ${nombreCompleto.length}');
  print('contains: ${nombreCompleto.contains('a')}');
  print('contain with index: ${nombreCompleto.contains('a', 10)}');
  print('end With: ${nombreCompleto.endsWith('a')}');
  print('pad left: ${nombreCompleto.padLeft(20, '...')}');
  print('pad right: ${nombreCompleto.padRight(20, '...')}');
  print('Operador []: ${nombreCompleto[10]}');
  print('Operador *: ${nombreCompleto * 3}');
  print('ReplaceAll: ${nombreCompleto.replaceAll(RegExp(r'a'), 'c')}');
  print('Substring: ${nombreCompleto.substring(0, 5)}...');
  print('IndexOf: ${nombreCompleto.indexOf(RegExp(r'\s'))}');
  print('Split: ${nombreCompleto.split(RegExp(r'\s'))}');
  print('Capitalize Last Letter: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
