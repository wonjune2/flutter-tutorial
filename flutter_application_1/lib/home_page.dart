import 'package:flutter/material.dart';

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
            color: Colors.red,
            child: Text('home'),
          ),
          Container(
            color: Colors.green,
            child: Text('home'),
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
