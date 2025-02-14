import 'dart:io';

main() async {
  String path = Directory.current.path + '/assets/personas.txt';

  String texto = await readFile(path);

  print(texto);
  print('Fin del main');
}

Future<String> readFile(String path) async => File(path).readAsString();