main() {
  int i = 0;
  int j = 0;

  outerForLoop:
  while (i < 5) {
    print('Valor de la i: $i',);
    i++;

    innerForLoop:
    while (j < 5){
      print('Valor de la j: $j');
      if(j == 3) break outerForLoop; //hace break para el while que se nombre
      j++;
    }
  }
}