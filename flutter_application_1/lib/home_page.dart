import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class HomePage extends StatelessWidget {
  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeModeChanged;
  final FlexScheme flexSchemeData;

  const HomePage({
    super.key,
    required this.themeMode,
    required this.onThemeModeChanged,
    required this.flexSchemeData,
  });

  void _handleMode() {
    onThemeModeChanged(themeMode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          actions: [
            IconButton(
              icon: Icon(Icons.add_alarm),
              onPressed: null,
            ),
          ],
        ),
        body: Column(
          children: [
            Text('This is the home page'),
            IconButton(onPressed: _handleMode, icon: Icon(Icons.dark_mode))
          ],
        ));
  }
}
