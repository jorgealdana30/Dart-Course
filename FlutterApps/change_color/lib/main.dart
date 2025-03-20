import 'package:change_color/config/theme/app_theme.dart';
import 'package:change_color/presentation/screens/change_color/change_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      home: ChangeColor(),
    );
  }
}