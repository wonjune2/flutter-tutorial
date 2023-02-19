import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
          flex: 1,
          child: FractionallySizedBox(
            widthFactor: 0.7,
            heightFactor: 0.7,
            alignment: FractionalOffset.center,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Icon(Icons.account_circle),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            alignment: FractionalOffset.centerLeft,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text('이원준'),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: FittedBox(
              child: Icon(Icons.more_horiz),
            ),
          ),
        ),
      ],
    );
  }
}
