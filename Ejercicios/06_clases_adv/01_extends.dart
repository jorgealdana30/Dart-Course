class Vehiculo {

  bool encendido = false;
  String marca = "";
  String modelo = "";

  void mover() {}

  void encender() {
    encendido = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo apagado');
  }
}

class Carro extends Vehiculo {

  int kilometraje = 0;

  @override
  void mover() {
    print("Carro en movimiento");
  }

}

class Moto extends Vehiculo {

  @override
  void mover() => print("Moto en movimiento");
}


main() async {
  final chevrolet = Carro();
  chevrolet.encender();
  chevrolet.mover();
  await Future.delayed(Duration(seconds: 2));
  chevrolet.apagar();
  chevrolet.kilometraje = 100;

  print("Kilometros del vehiculo: ${chevrolet.kilometraje}");

  final moto = Moto();
  moto.mover();
}