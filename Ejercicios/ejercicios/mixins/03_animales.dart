abstract class Animal {
  void describir();
}

mixin Nadador {
  void nadar();
}

mixin Corredor {
 void correr() => print('Puedo correr');
}

mixin TrepaArboles {
  void trepar() => print('Puedo trepar arboles');
}

class Perro extends Animal with Corredor, Nadador {

  @override
  void describir() {
    correr();
    nadar();
  }

  @override
  void nadar() => print('Puedo nadar');
}

class Gato extends Animal with Corredor, TrepaArboles {
  @override
  void describir() {
    correr();
    trepar();
  }
}

class Pez extends Animal with Nadador {

  @override
  void describir() => nadar();

  @override
  void nadar() => print('Puedo nadar');
}

main() {

  print('--------- Perro --------');
  final perro = Perro();
  perro.describir();

  print('--------- Gato --------');
  final gato = Gato();
  gato.describir();

  print('--------- Pez --------');
  final pez = Pez();
  pez.describir();
}