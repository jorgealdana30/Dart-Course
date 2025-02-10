import 'dart:math';

main() {
  print('Ejecutando...');
  Future<int> f = Future.delayed(Duration(seconds: 2), () {
    int chance = Random().nextInt(100);
    int number = Random().nextInt(100);
    return chance >= 50 ? number : throw 'Ocurrió un error al enviar el numero';//Future.error('Ocurrió un error al enviar el numero');
  });
  
  f.then((numero) {
    print('El numero es: $numero');
  }).catchError((error) {
    print(error);
  });
}