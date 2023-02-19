import 'package:flutter/material.dart';
import 'package:my_project1/widgets/screens/main_screen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Used to select if we use the dark or light theme, start with system mode.

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
        useMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: usedScheme,
        // Use a bit more themed elevated app bar in dark mode.
        appBarElevation: 2,
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
