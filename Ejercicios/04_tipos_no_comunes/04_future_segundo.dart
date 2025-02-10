import 'dart:io';

main() {
  File file = File(Directory.current.path + '\\assets\\personas.txt');

  Future<String> f = file.readAsString();

  f.then(print);
}