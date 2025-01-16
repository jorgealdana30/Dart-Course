main () {
  int a = 10;
  int? b = 1;

  b ??= 20; // Asignar el valor unicamente si la variable es null

  // print(b);

  //Operador Condicional

  int c = 23;
  String resp = c > 25 ? 'C es mayor a 25' : 'C es menor a 25';
  // print(resp);

  int d = b ?? a ?? 100; // toma valor de a si b es nulo, si no, asigna b, se puede poner todas la condiciones que se requieran
  print(d);
}