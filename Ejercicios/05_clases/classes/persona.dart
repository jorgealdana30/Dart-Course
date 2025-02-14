class Persona {
  //Propiedades
  String? nombre;
  String? _bio; //Propiedad privada
  int? edad;

  //Getters
  String get bio => _bio ?? 'No hay valor';

  //Setters
  set bio(String bio) => this._bio = bio;

  //Constructores
  Persona(this.edad, this.nombre);

  @override
  String toString() => '$nombre $edad $_bio';
}
