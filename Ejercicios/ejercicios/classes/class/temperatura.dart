class Temperatura {
  double _celsius = 0;

  double get fahrenheit => this._celsius * 9/5 + 32;
  double get kelvin => this._celsius + 273.15;

  set celsius(double celsius) => this._celsius = celsius;
}