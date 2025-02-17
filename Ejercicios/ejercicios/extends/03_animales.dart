class Animal {
  String? nombre;

  void hacerSonido() {}
  void comer() => print('$nombre está comiendo...');
}

class Perro extends Animal {
  @override
  void hacerSonido() => print('Guau Guau!');
}

class Gato extends Animal {
  @override
  void hacerSonido() => print('Miau Miau!');
}

main() {
  final perro = Perro();
  final gato = Gato();

  perro.nombre = 'Kotlin';
  perro.hacerSonido();
  perro.comer();

  gato.nombre = 'Vito';
  gato.hacerSonido();
  gato.comer();
}
