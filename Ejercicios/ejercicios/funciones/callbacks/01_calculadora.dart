main () {
  print(operar(10, 15, suma));
  print(operar(10, 15, resta));
  print(operar(10, 15, multi));
}

int suma (int x, int y) => x + y;

int resta (int x, int y) => x - y;

int multi (int x, int y) => x * y;

int operar(int x, int y, Function operacion){
  return operacion(x, y);
}