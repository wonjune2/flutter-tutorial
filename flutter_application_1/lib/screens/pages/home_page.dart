import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pages/home_part.dart/body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 25,
          child: Column(
            children: [
              Expanded(
                child: Text('header'),
              ),
              Expanded(
                flex: 4,
                child: ContentBox(),
              ),
              Expanded(
                child: Text('footer'),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        )
      ],
    ));
  }
}
