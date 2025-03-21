import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).theme(),
      home: Scaffold(
        appBar: AppBar(title: Text('Material App Bar')),
        body: Center(
            child: FilledButton(
              child: Text('Click me'),
              onPressed: () {},
            )
        ),
      ),
    );
  }
}
