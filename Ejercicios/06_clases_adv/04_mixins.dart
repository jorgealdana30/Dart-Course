mixin Logger {

  void imprimir(String text) {
    final hoy = DateTime.now();
    print('$hoy :::: $text');
  }
}

mixin Logger2 {

  void imprimir2(String text) {
    final hoy = DateTime.now();
    print('$hoy :::: $text');
  }
}

abstract class Astro with Logger, Logger2 {

  String? nombre;

  Astro(){
    imprimir('--- Init del Astro---');
  }

  void existo() => print('Soy un ser celestial');
}

class Asteroide extends Astro {

  String? nombre;

  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
    imprimir2('Imprimiendo del logger 2');
  }
}

main() {

  final ceres = Asteroide('Ceres');

}
