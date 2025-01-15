main () {
  var a = 10;
  final int b = 10; // variables que no cambian desde su inicializacion, espacio de memoria mas ligero
  const int c = 10; // variables que no cambian desde su inicializacion, se crea un espacio en memoria que no cambia

  final List<String> personasFinal = ['Juan', 'José', 'Luis'];
  const List<String> personasConst = ['Juan', 'José', 'Luis'];
  List<String> personasConst2 = const ['Juan', 'José', 'Luis'];

  personasFinal.add('Andrea');

  // print(personasFinal);
  // print(personasConst);


  //late initializer
  late final double x;
  x = 10.25;
  print(x);

}