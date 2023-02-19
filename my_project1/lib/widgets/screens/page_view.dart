import 'package:flutter/material.dart';
import 'package:my_project1/widgets/screens/pages/home.dart';

class MyPages extends StatelessWidget {
  const MyPages({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: <Widget>[
        const MyHome(),
        const Text('2'),
        const Text('3'),
      ][index],
    );
  }
}
