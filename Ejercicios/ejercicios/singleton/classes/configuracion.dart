class Configuracion {

  static final Configuracion _configuracion = Configuracion._();

  Configuracion._();

  factory Configuracion() {
    return _configuracion;
  }

  String idioma = "Español";
  bool darkMode = false;
  bool isWifiEnabled = false;
  bool isBluetoothEnabled = false;
}