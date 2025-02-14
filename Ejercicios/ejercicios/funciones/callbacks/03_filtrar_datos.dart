main() {
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> pares = filtrar(lista, esPar);
  List<int> impares = filtrar(lista, esImpar);
  List<int> multi5 = filtrar(lista, esMultiplo5);

  print('Números pares: $pares'); // [2, 4, 6, 8, 10]
  print('Números impares: $impares'); // [1, 3, 5, 7, 9]
  print('Números multiplos de 5: $multi5');
}

List<int> filtrar(List<int> numeros, bool Function(int) condicion) {
  List<int> resultado = [];
  for (int numero in numeros) {
    if (condicion(numero)) {
      resultado.add(numero);
    }
  }
  return resultado;
}

bool esPar(int numero) => numero % 2 == 0;
bool esImpar(int numero) => numero % 2 != 0;
bool esMultiplo5(int numero) => numero % 5 == 0;
