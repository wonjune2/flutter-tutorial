import 'package:flutter/material.dart';
import 'package:my_project1/widgets/screens/page_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 50,
            child: MyPages(index: currentPageIndex),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
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
