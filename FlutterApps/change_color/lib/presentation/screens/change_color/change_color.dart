import 'dart:math';

import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  int colorRandom = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Random'),
        backgroundColor: colors[colorRandom],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        color: colors[colorRandom],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          colorRandom = Random().nextInt(15);
        });
      },
      child: Icon(Icons.format_color_fill),),
    );
  }
}
