import 'Temperatura.dart';

main() {
  final temperatura = Temperatura();
  temperatura.celsius = 25;
  print('Fahrenheit: ${temperatura.fahrenheit}');
  print('Kelvin: ${temperatura.kelvin}');
}