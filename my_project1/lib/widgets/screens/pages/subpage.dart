import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  const SubPage({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('...준비중 ${index + 1}'),
    );
  }
}
