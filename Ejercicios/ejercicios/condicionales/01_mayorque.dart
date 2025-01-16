main() {
  int number1 = 10;
  int number2 = 15;

  //Codigo normal
  if (number1 > number2) {
    print('Numero 1 es mayor');
  } else {
    print('Numero 2 es mayor');
  }

  // Codigo refactorizado
  if (number1 > number2) {
    print('Numero 1 es mayor');
    return;
  }
  print('Numero 2 es mayor');
}