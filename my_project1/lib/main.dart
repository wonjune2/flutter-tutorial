import 'package:flutter/material.dart';
import 'package:my_project1/demo_app.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Used to select if we use the dark or light theme, start with system mode.
  ThemeMode themeMode = ThemeMode.light;
  int counter = 0;
  void incrementCounter(int count) {
    setState(() {
      counter = count + 1;
    });
  }

  void onThemeModeChanged(ThemeMode mode) {
    setState(() {
      themeMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Select the predefined FlexScheme color scheme to use. Modify the
    // used FlexScheme enum value below to try other pre-made color schemes.
    const FlexScheme usedScheme = FlexScheme.sakura;

    return MaterialApp(
      title: 'Flutter Demo',
      // Use a predefined FlexThemeData.light() theme for the light theme.
      theme: FlexThemeData.light(
        scheme: usedScheme,
        // Use very subtly themed app bar elevation in light mode.
        appBarElevation: 0.5,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: usedScheme,
        // Use a bit more themed elevated app bar in dark mode.
        appBarElevation: 2,
      ),
      themeMode: themeMode,

      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        themeMode: themeMode,
        onThemeModeChanged: onThemeModeChanged,
        flexSchemeData: FlexColor.schemes[usedScheme]!,
        // my settings
        incrementCounter: incrementCounter,
        counter: counter,
      ),
    );
  }
}
