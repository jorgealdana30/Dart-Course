abstract interface class Tuner {
  void tuneInstrument();
}

mixin Guitarist implements Tuner {
  void playSong() {
    tuneInstrument();

    print('Playing the guitar...');
  }
}

class PunkRocker with Guitarist {

  @override
  void tuneInstrument() {
    print('Tunning the instrument');
  }
}

main() {
  final punkRocker = PunkRocker();
  punkRocker.playSong();
}