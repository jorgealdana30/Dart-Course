class CuentaBancaria {

  double? _saldo;

  double get saldo => _saldo ?? 0.0;

  set deposito(double newSaldo) {
    if (newSaldo < 0)
      throw 'Debe ingresar saldo positivo';
    this._saldo = newSaldo;
  }

  void retirar(double cantidad) {
    if (this.saldo < cantidad)
      throw 'No hay saldo disponible';
    this._saldo = this.saldo - cantidad;
    print('Nuevo saldo disponible ${this.saldo}');
  }
}