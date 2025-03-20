import 'package:change_size_text/presentation/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(ChangeSizeTextApp());

class ChangeSizeTextApp extends StatelessWidget {
  const ChangeSizeTextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Change Size Text App',
      home: Home()
    );
  }
}
