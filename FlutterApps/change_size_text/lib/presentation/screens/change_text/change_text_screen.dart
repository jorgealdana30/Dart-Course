import 'package:flutter/material.dart';

class ChangeTextScreen extends StatefulWidget {
  const ChangeTextScreen({super.key});

  @override
  State<ChangeTextScreen> createState() => _ChangeTextScreenState();
}

class _ChangeTextScreenState extends State<ChangeTextScreen> {
  double size = 12;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(left: 20, right: 20),
          child:
            Text('Esto es un texto de ejemplo que puede aumentar o disminuir', style: TextStyle(fontSize: size),),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChangeSizeButton(
                text: 'Aumentar tamaño',
                onPressed: () {
                  setState(() {
                    if (size > 48) return;
                    size += 2;
                  });
                },
              ),
              SizedBox(width: 10,),
              ChangeSizeButton(
                text: 'Disminuir tamaño',
                onPressed: () {
                  setState(() {
                    if (size == 0) return;
                    size -= 2;
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class ChangeSizeButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const ChangeSizeButton({super.key, this.onPressed, required this.text});
  
  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPressed, child: Text(text));
  }
}