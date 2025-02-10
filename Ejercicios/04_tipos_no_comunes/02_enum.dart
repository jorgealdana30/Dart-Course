main() {
  Audio volumen = Audio.medio;

  switch (volumen){
    case Audio.alto: print('El volumen está alto'); break;
    case Audio.medio: print('El volumen está medio'); break;
    case Audio.bajo: print('El volumen está bajo'); break;
  }
}

enum Audio {
  bajo,
  medio,
  alto
}