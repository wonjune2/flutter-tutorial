import 'package:flutter/material.dart';
import 'package:my_project1/widgets/screens/pages/post_bottom.dart';
import 'package:my_project1/widgets/screens/pages/post_header.dart';
import 'package:my_project1/widgets/screens/pages/post_image.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          flex: 1,
          child: PostHeader(),
        ),
        Expanded(
          flex: 7,
          child: PostImage(),
        ),
        Expanded(
          flex: 2,
          child: PostBottom(),
        ),
      ],
    );
  }
}
