import 'package:flutter/material.dart';

class ContentBox extends StatelessWidget {
  const ContentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(),
        ),
        Expanded(
          flex: 6,
          child: Container(),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        ),
      ],
    ));
  }
}
