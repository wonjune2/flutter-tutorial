import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcom to Flutter'),
          ),
          body: Row(
            children: const [
              Expanded(
                child: FittedBox(
                  child: Text('Data'),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: BlueBox(),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: BlueBox(),
              )
            ],
          )),
    );
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
