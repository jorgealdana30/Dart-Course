import 'classes/mi_servicio.dart';

main() {

  final spotifyService = MiServicio(); //Singleton con Factory

  spotifyService.key = "ABC123";
  spotifyService.url = "https://api.spotify.com";

  print(spotifyService.url);
}