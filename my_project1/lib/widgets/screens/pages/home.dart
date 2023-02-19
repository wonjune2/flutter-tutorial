import 'package:flutter/material.dart';
import 'package:my_project1/widgets/screens/pages/post.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(
          flex: 1,
          child: Text('Header'),
        ),
        Expanded(
          flex: 8,
          child: ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: const Card(
              child: MyPost(),
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: Text('footer'),
        ),
      ],
    );
  }
}
