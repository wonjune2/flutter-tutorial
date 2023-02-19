import 'package:flutter/material.dart';

class PostBottom extends StatelessWidget {
  const PostBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: FractionallySizedBox(
            widthFactor: 0.97,
            child: Row(
              children: const [
                Expanded(
                  child: Icon(Icons.heart_broken),
                ),
                Expanded(
                  child: Text('999'),
                ),
                Expanded(
                  child: Icon(Icons.heart_broken),
                ),
                Spacer(
                  flex: 9,
                ),
                Expanded(
                  flex: 2,
                  child: Icon(Icons.comment),
                ),
                Expanded(
                  flex: 1,
                  child: Text('2'),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: Text('Comment'),
        ),
      ],
    );
  }
}
