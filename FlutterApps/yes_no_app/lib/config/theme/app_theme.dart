import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  _customColor,
  Colors.yellow,
  Colors.black,
  Colors.blue,
  Colors.red,
  Colors.amberAccent,
  Colors.deepOrange,
  Colors.blueGrey,
  Colors.blueAccent,
  Colors.cyan,
  Colors.brown,
  Colors.deepPurple,
  Colors.green,
  Colors.indigo,
  Colors.pink,
  Colors.teal,
  Colors.yellow
];
const Color _customColor = Color(0xFF5C11D4);

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor}) :
      assert(selectedColor <= _colorThemes.length, 'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light
    );
  }
}