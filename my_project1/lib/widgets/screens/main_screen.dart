import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  void onChangePage(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Center(
        child: PageTransitionSwitcher(
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
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1.5, 0.0),
                  end: Offset.zero,
                ).animate(primaryAnimation),
                child: child,
              ),
            );
          },
          child: [
            Container(
              key: const Key('0'),
              child: const Text('oneasdasdassssssssss'),
            ),
            Container(
              key: const Key('1'),
              child: const Text('adasdddddddddddddddddddddddd'),
            ),
            Container(
              key: const Key('2'),
              child: const Text('threeasdasdassssssss'),
            ),
          ][currentPageIndex],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: '홈',
            selectedIcon: Icon(Icons.home),
          ),
          NavigationDestination(
            icon: Icon(Icons.more_horiz_outlined),
            label: '준비중...',
            selectedIcon: Icon(Icons.more_horiz),
          ),
          NavigationDestination(
            icon: Icon(Icons.more_horiz_outlined),
            label: '준비중...',
            selectedIcon: Icon(Icons.more_horiz),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
