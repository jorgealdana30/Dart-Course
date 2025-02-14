import 'classes/vehiculo.dart';

main() {
  try {
    final vehiculo = Vehiculo(7);
    print(vehiculo);
  } catch (error) {
    print(error);
  }
}
