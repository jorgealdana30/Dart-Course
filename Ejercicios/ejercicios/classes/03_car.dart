import 'class/car.dart';

main() {

  final usedCar = Car.usedCar(brand: 'Mercedes', model: 2011);
  final newCar = Car.newCar(brand: 'Chevrolet', model: 2023, year: 2022);

  print(usedCar);
  print(newCar);
}