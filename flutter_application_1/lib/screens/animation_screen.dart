import 'package:flutter/material.dart';

const owlUrl = 'https://picsum.photos/250?image=9';

class FadeInDemo extends StatefulWidget {
  const FadeInDemo({super.key});

  @override
  State<FadeInDemo> createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(owlUrl),
        TextButton(
          onPressed: () {
            setState(() {
              opacity = opacity == 1 ? 0 : 1;
            });
          },
          child: Text(
            'Show Details',
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
        AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: opacity,
            child: Column(
              children: [
                Text('TYpeL Owl'),
                Text('Age: 39'),
                Text('Employment: None'),
              ],
            ))
      ],
    );
  }
}
