import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/pages/home_page.dart';
import 'package:flutter_application_1/screens/pages/seconds_page.dart';
import 'package:flutter_application_1/screens/pages/third_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void _handlePage(int index) {
    setState(() {
      currentPageIndex = index;
    });
    if (_pageController.hasClients) {
      _pageController.jumpToPage(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        index: currentPageIndex,
        onChangePage: _handlePage,
      ),
      body: MyPageView(
        index: currentPageIndex,
        pageController: _pageController,
      ),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onChangePage;
  MyBottomNavigationBar(
      {super.key, required this.index, required this.onChangePage});

  void onDestinationSelected(int index) {
    onChangePage(index);
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: onDestinationSelected,
      selectedIndex: index,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: 'Explore',
          selectedIcon: Icon(Icons.home),
        ),
        NavigationDestination(
          icon: Icon(Icons.commute),
          label: 'Commute',
        ),
        NavigationDestination(
          icon: Icon(Icons.bookmark_border),
          label: 'Saved',
        ),
      ],
    );
  }
}

class MyPageView extends StatelessWidget {
  final int index;
  final PageController pageController;
  MyPageView({super.key, required this.index, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        MyHomePage(),
        MySecondsPage(),
        MyThirdPage(),
      ],
    );
  }
}
