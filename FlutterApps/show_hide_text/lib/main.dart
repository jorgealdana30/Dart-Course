import 'package:flutter/material.dart';
import 'package:show_hide_text/presentation/screens/home/home.dart';

void main() => runApp(ShowHideApp());

class ShowHideApp extends StatelessWidget {
  const ShowHideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Show Hide App',
      home: Home(),
    );
  }
}
