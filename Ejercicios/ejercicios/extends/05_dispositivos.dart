class Device {
  String? brand;

  void encender() => print('Dispositivo encendido.');

  @override
  String toString() => "Dispositivo marca: $brand";
}

class Phone extends Device {
  void makeCall() => print('Llamando...');

  @override
  void encender() => print('Iniciando... $brand');
}

class Laptop extends Device {
  void develop() => print("Desarrollando...");

  void encender() => print('Iniciando... $brand');

}

class Tablet extends Device {
  void draw() => print('Dibujando...');

  void encender() => print('Iniciando... $brand');
}

main() {
  final phone = Phone();
  final laptop = Laptop();
  final tablet = Tablet();

  phone.brand = "iPhone 14 Pro Max";
  laptop.brand = "MacBook Pro";
  tablet.brand = "iPad Pro";

  print(phone.toString());
  phone.encender();
  phone.makeCall();

  print('__________________');

  print(laptop.toString());
  laptop.encender();
  laptop.develop();

  print('__________________');

  print(tablet.toString());
  tablet.encender();
  tablet.draw();

}
