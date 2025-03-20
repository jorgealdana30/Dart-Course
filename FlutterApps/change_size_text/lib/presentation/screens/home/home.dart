import 'package:change_size_text/presentation/screens/change_text/change_text_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Change Size'),
      ),
      body: const ChangeTextScreen(),
    );
  }
}
