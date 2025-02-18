class Musician {
  void musicianMethod() {
    print('Playing the song...');
  }
}

mixin MusicalPerformer on Musician {

  void performerMethod() {
    print('Performing...');
    super.musicianMethod();
  }
}

class SingerDancer extends Musician with MusicalPerformer {} //only classes that
// extend or implement the Musician class can use the mixin MusicalPerformer.
// Because SingerDancer extends Musician, SingerDancer can mix in MusicalPerformer.

main() {
  SingerDancer().performerMethod();
}
