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

  // print(multiline);

  // booleans

  bool isActive = true;
  bool isNotActive = !isActive;

  // print(isNotActive);

  // Listas

  List<String> villanos = ['Lex', 'Red Skull', 'Doom'];

  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');

  // print(villanos);

  // Sets
  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};

  // print(villanos.toSet().toList());

  // print(villanos2);

  // Maps - Diccionarios

  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y Dinero',
    'nivel': 9000
  };

  Map<String, dynamic> capitan = new Map();

  capitan.addAll({
    'nombre' : 'Steve',
    'poder'  : 'Soportar droga sin morir',
    'nivel'  :  5000
  });

  capitan.addAll(ironman);
  print(capitan);

  // print(ironman);
  // print( ironman['poder']);
}
