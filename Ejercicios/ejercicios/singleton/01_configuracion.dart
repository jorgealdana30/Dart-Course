import 'classes/configuracion.dart';

main () async {

  final configuracion = Configuracion();

  print("Idioma: ${configuracion.idioma}");
  print("Modo Oscuro: ${configuracion.darkMode}");
  print("Wifi Habilitado: ${configuracion.isWifiEnabled}");
  print("Bluetooth Habilitado: ${configuracion.isBluetoothEnabled}");

  print("Habilitando configuración...q\n");

  await Future.delayed(Duration(seconds: 2));

  configuracion.isWifiEnabled = true;
  configuracion.isBluetoothEnabled = true;

  print("Wifi Habilitado: ${configuracion.isWifiEnabled}");
  print("Bluetooth Habilitado: ${configuracion.isBluetoothEnabled}");
}