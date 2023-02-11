import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final int counter;
  final String title;
  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeModeChanged;
  final ValueChanged<int> incrementCounter;
  final FlexSchemeData flexSchemeData;

  void onThemeModeSwitch() {
    onThemeModeChanged(
        themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
  }

  void onTabCounter() {
    incrementCounter(counter);
  }

  const MyHomePage({
    super.key,
    required this.title,
    required this.counter,
    required this.themeMode,
    required this.onThemeModeChanged,
    required this.flexSchemeData,
    required this.incrementCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              onPressed: onThemeModeSwitch,
              icon: themeMode == ThemeMode.light
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onTabCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
