import 'dart:io';

class ReadAndWrite {

  static int readNumber(String prompt) {
    stdout.writeln(prompt);
    return int.parse(stdin.readLineSync() ?? '0');
  }

  static int? readNumberOrNull(String prompt) {
    stdout.writeln(prompt);
    return int.tryParse(stdin.readLineSync() ?? '0');
  }

  static String readString(String prompt) {
    stdout.writeln(prompt);
    return stdin.readLineSync() ?? '';
  }

  static double readDouble(String prompt) {
    stdout.writeln(prompt);
    return double.parse(stdin.readLineSync() ?? '0.0');
  }

  static void writeConsole(String prompt) {
    stdout.writeln(prompt);
  }
}