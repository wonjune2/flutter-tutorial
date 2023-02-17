import 'package:flutter/material.dart';

class BNavigationBar extends StatelessWidget {
  const BNavigationBar(
      {super.key, required this.currentPageIndex, required this.onChangePage});

  final int currentPageIndex;
  final ValueChanged<int> onChangePage;

  void handleIndex(int index) {
    onChangePage(index);
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: handleIndex,
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
    );
  }
}
