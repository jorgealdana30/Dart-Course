import 'dart:math';

class CuentaBancaria {
  int? saldo;
  int? numero;
  TipoCuenta? tipo;

  CuentaBancaria._crearCuentaAhorros(int saldo) {
    this.saldo = saldo;
    this.numero = Random().nextInt(99999999);
    this.tipo = TipoCuenta.Ahorros;
  }

  CuentaBancaria._crearCuentaCorriente(int saldo) {
    this.saldo = saldo;
    this.tipo = TipoCuenta.Corriente;
    this.numero = Random().nextInt(99999999);
  }

  factory CuentaBancaria(int? saldo, TipoCuenta tipo) {
    if (saldo == null) return CuentaBancaria._crearCuentaAhorros(0);
    if (saldo < 0) throw "No se puede agregar saldo negativo.";
    if (tipo == TipoCuenta.Corriente)
      return CuentaBancaria._crearCuentaCorriente(saldo);
    return CuentaBancaria._crearCuentaAhorros(saldo);
  }

  @override
  String toString() =>
      "Cuenta Bancaria tipo ${tipo?.name}, #$numero, saldo de: $saldo COP.";
}

enum TipoCuenta { Ahorros, Corriente }
