abstract class Vehiculo {
  String marca;
  String modelo;

  Vehiculo(this.marca, this.modelo);

  String descripcion();
}

class Carro extends Vehiculo {
  Carro(String marca, String modelo) : super(marca, modelo);

  @override
  String descripcion() => "Carro marca: $marca, modelo: $modelo";
}

class Moto extends Vehiculo {
  Moto(String marca, String modelo) : super(marca, modelo);

  @override
  String descripcion() => "Moto marca: $marca, modelo: $modelo";
}

main() {
  final carro = Carro("Chevrolet", "Joy");
  print(carro.descripcion());

  final moto = Moto("TVS", "Ryder");
  print(moto.descripcion());
}
