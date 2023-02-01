import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_application_1/home_page.dart';

void main() => runApp(const DemoApp());

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  ThemeMode themeMode = ThemeMode.light;

  void onThemeModeChanged(ThemeMode mode) {
    setState(() {
      if (mode == ThemeMode.light) {
        themeMode = ThemeMode.dark;
      } else {
        themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Select the predefined FlexScheme color scheme to use. Modify the
    // used FlexScheme enum value below to try other pre-made color schemes.
    const FlexScheme usedScheme = FlexScheme.gold;

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Basic Theme Usage',
      theme: FlexThemeData.light(
        scheme: usedScheme,
        appBarElevation: 0.5,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: usedScheme,
        appBarElevation: 2,
      ),
      themeMode: themeMode,
      home: HomePage(
          themeMode: themeMode,
          onThemeModeChanged: onThemeModeChanged,
          flexSchemeData: usedScheme),
    );
  }
}
