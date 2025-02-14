import 'classes/cuenta_bancaria.dart';

main() {
  final cuentaAhorros = CuentaBancaria(5000, TipoCuenta.Ahorros);
  final cuentaCorriente = CuentaBancaria(200000, TipoCuenta.Corriente);
  final cuentaSinSaldo = CuentaBancaria(null, TipoCuenta.Ahorros);

  try {
    final cuentaInvalida = CuentaBancaria(-5000, TipoCuenta.Ahorros);
    print(cuentaInvalida);
  } catch (e) {
    print(e);
  }

  print(cuentaAhorros);
  print(cuentaCorriente);
  print(cuentaSinSaldo);
}
