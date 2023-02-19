import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: const Image(
        fit: BoxFit.fill,
        image: AssetImage('images/lake.jpg'),
      ),
    );
  }
}
