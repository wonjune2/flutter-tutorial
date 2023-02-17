import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      transitionBuilder: (
        Widget child,
        Animation<double> primaryAnimation,
        Animation<double> secondaryAnimation,
      ) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(1.5, 0.0),
          ).animate(secondaryAnimation),
          child: FadeTransition(
            opacity: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(primaryAnimation),
            child: child,
          ),
        );
      },
      child: [
        Container(
          child: const Text('one'),
        ),
        Container(
          child: const Text('two'),
        ),
        Container(
          child: const Text('three'),
        ),
      ][currentPageIndex],
    );
  }
}
