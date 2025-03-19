import 'package:flutter/material.dart';

class ShowHideText extends StatefulWidget {
  const ShowHideText({super.key});

  @override
  State<ShowHideText> createState() => _ShowHideTextState();
}

class _ShowHideTextState extends State<ShowHideText> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: isHidden,
            child: Text('Hola, este texto puede desaparecer.'),
          ),
          SizedBox(height: 10),
          FilledButton(onPressed: () {
            setState(() {
              isHidden = !isHidden;
            });
          }, child: Text(!isHidden ? 'Aparecer' : 'Desaparecer'),)
        ],
      ),
    );
  }
}
