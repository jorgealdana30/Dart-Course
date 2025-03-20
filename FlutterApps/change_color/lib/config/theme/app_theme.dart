import 'package:change_color/data/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final int selectedColor = 13;

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colors[selectedColor]
    );
  }
}