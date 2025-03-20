import 'package:flutter/material.dart';

class CounterFunction extends StatefulWidget {
  const CounterFunction({super.key});

  @override
  State<CounterFunction> createState() => _CounterFunctionState();
}

class _CounterFunctionState extends State<CounterFunction> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: Icon(Icons.refresh_outlined)),
        ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text(clickCounter < 2 ? 'Click' : 'Clicks', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(iconData: Icons.plus_one, onPressed: () {
            setState(() {
              clickCounter++;
            });
          },),
          const SizedBox(height: 10,),
          CustomButton(iconData: Icons.exposure_minus_1, tooltip: 'Restar 1', onPressed: () {
            setState(() {
              if (clickCounter == 0) return;
              clickCounter--;
            });
          },)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback? onPressed;
  final String? tooltip;

  const CustomButton({super.key, required this.iconData, required this.onPressed, this.tooltip});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      tooltip: tooltip,
      elevation: 10,
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Icon(iconData),);
  }
}