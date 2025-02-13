class MiServicio {

  static final MiServicio _singleton = MiServicio._();

  MiServicio._();

  factory MiServicio() {
    return _singleton;
  }

  String? url;
  String? key;
}