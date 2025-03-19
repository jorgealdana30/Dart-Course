import 'package:flutter/material.dart';
import 'package:show_hide_text/presentation/screens/show_hide_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Show Hide Text')),
      body: ShowHideText()
    );
  }
}
