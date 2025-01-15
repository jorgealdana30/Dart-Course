main() {
  // numeros
  int a = 10;
  double b = 10.0;

  int? c;

  int _a = 30;
  double $b = 40;

  double resultado = _a + $b;

  // print(resultado);

  // Strings
  String nombre = 'Tony';
  String nombre2 = "Tony";
  String apellido = 'Stark';

  String nombreCompleto = '$nombre $apellido';

  String multiline = '''
  Hola Mundo
  ¿Como estás?
  $nombreCompleto
  O'Connor
  ''';

  print(multiline);
}
