import 'package:flutter/material.dart';

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(
        children: const [
          Text(
            'data1',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              'data2',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
