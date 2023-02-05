import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/animation_screen.dart';
import 'dart:math';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int currentPageIndex = 0;
  void onDestinationSelected(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: onDestinationSelected,
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Explore',
              selectedIcon: Icon(Icons.home)),
          NavigationDestination(icon: Icon(Icons.commute), label: 'Commute'),
          NavigationDestination(
              icon: Icon(Icons.bookmark_border), label: 'Saved'),
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: [
          Container(
            color: Colors.green,
            child: FadeInDemo(),
          ),
          Container(
            color: Colors.black,
            child: AnimatedContainerDemo(),
          ),
          Container(
            color: Colors.blue,
            child: Text('home'),
          )
        ][currentPageIndex],
      ),
    );
  }
}

double randomBorderRadius() {
  return Random().nextDouble() * 64;
}

double randomMargin() {
  return Random().nextDouble() * 64;
}

Color randomColor() {
  return Color(0xFFFFFFF & Random().nextInt(0xFFFFFFFF));
}

Duration _duration = Duration(milliseconds: 400);

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  late Color color;
  late double borderRadius;
  late double margin;

  @override
  void initState() {
    super.initState();
    color = randomColor();
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  void change() {
    setState(() {
      color = randomColor();
      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 128,
            height: 128,
            child: AnimatedContainer(
              curve: Curves.easeInOutBack,
              duration: _duration,
              margin: EdgeInsets.all(margin),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: change,
            child: Text('Change'),
          )
        ],
      ),
    );
  }
}
