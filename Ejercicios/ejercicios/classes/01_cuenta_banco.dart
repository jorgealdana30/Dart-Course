import 'class/cuenta_bancaria.dart';

main() {
  final cuentaBancaria = CuentaBancaria();
  cuentaBancaria.deposito = -5000000;
  cuentaBancaria.retirar(1200000);
}
