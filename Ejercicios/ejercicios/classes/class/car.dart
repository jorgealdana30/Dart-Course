class Car {

  String? _brand;
  int? _model;
  int? _year;

  String get brand => this._brand ?? 'No brand.';
  int get model => this._model ?? 0;
  int get year => this._year ?? 0;

  set brand(String brand) => this._brand = brand;
  set model(int model) => this._model = model;
  set year(int year) => this._year = year;

  Car.newCar({String? brand, int? model, int? year}) : _brand = brand, _model = model, _year = year;

  Car.usedCar({String? brand, int? model}) {
    this._brand = brand;
    this._model = model;
    this._year = 2010;
  }

  String toString() => 'Marca: ${this.brand}, Modelo: ${this.model}, Año: ${this.year}';
}