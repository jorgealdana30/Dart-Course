main() {
  outerForLoop:
  for (int i = 0; i < 5; i++) {
    print('Valor de la i: $i',);

    innerForLoop:
    for (int j = 0; j < 5; j++){
      print('Valor de la j: $j');

      if(j == 3) break outerForLoop; //hace break para el for que se nombre
    }
  }
}