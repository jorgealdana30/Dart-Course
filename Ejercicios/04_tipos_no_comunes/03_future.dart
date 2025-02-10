main() {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues...');
    return 'Retorno del Future';
  });

  timeout.then(print);

  print('Fin del main');
}