main() async {
  await validarCarrito();
  await procesarPago();
  await enviarConfirmacion();
}

Future<void> validarCarrito() async => Future.delayed(
    Duration(seconds: 1, milliseconds: 50), () => print('Carrito válido'));
Future<void> procesarPago() async =>
    Future.delayed(Duration(seconds: 2), () => print('Pago aprobado'));
Future<void> enviarConfirmacion() async =>
    Future.delayed(Duration(seconds: 1), () => print('Confirmación enviada'));
