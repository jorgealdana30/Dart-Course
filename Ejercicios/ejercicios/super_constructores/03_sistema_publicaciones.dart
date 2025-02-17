abstract class Publicacion {
  String titulo;
  String autor;
  DateTime fecha;

  Publicacion(this.titulo, this.autor, this.fecha);

  void mostrarContenido();
}

class Articulo extends Publicacion {
  String contenido;

  Articulo(String titulo, String autor, DateTime fecha, this.contenido)
      : super(titulo, autor, fecha);

  @override
  void mostrarContenido() => print(
      "Articulo titulo: $titulo, Autor: $autor, Fecha Publicación: $fecha, Contenido: $contenido");
}

class Video extends Publicacion {
  String duracion;
  String url;

  Video(String titulo, String autor, DateTime fecha, this.url, this.duracion)
      : super(titulo, autor, fecha);

  @override
  void mostrarContenido() => print(
      "Video titulo: $titulo, Autor: $autor, Fecha Publicación: $fecha, URL: $url");
}

class Imagen extends Publicacion {
  String resolucion;
  String formato;

  Imagen(String titulo, String autor, DateTime fecha, this.resolucion,
      this.formato)
      : super(titulo, autor, fecha);

  @override
  void mostrarContenido() => print(
      "Imagen titulo: $titulo, Autor: $autor, Fecha Publicación: $fecha, Resolución: $resolucion, Formato: $formato");
}

main() {
  final articulo = Articulo("Articulo 1", "Jorge Aldana",
      DateTime(2019, 02, 22), "Lorem ipsum bla bla bla");
  final video = Video("Tutorial programacion", "Andrea Benavides",
      DateTime(2022, 05, 30), "https://www.youtube.com/tutorial", "3:30");
  final imagen = Imagen("Foto de Michael Jackson", "Fulanito",
      DateTime(1998, 09, 30), "512x512", ".jpeg");

  List<Publicacion> listPublicaciones = [articulo, video, imagen];

  listPublicaciones.forEach((publicacion) {
    publicacion
        .mostrarContenido(); //polimorfismo: ya que cada clase usa este metodo a su manera
  });
}
