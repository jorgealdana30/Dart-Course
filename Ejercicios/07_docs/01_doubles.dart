main() {

  double numero = 0.1416;

  print('Firma: ${numero.sign} :: ${numero}');
  print('isFinite: ${numero.isFinite} :: ${numero}');
  print('isInfinite: ${numero.isInfinite} :: ${numero}');
  print('abs: ${numero.abs()} :: ${numero}');
  print('ceil: ${numero.ceilToDouble()} :: ${numero}');
  print('round: ${numero.roundToDouble()} :: ${numero}');
  print('clamp: ${numero.clamp(1, 3)} :: ${numero}');
}