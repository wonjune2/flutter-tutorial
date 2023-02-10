import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/screens/main_screen.dart';

void main() {
  debugPaintSizeEnabled = true; // Remove to suppress visual layout
  runApp(const DemoApp());
}

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
    const FlexScheme usedScheme = FlexScheme.damask;

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Basic Theme Usage',
      theme: FlexThemeData.light(
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        scheme: usedScheme,
        appBarElevation: 0.5,
        fontFamily: 'NotoSansKR',
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        scheme: usedScheme,
        appBarElevation: 2,
        fontFamily: 'NotoSansKR',
      ),
      themeMode: themeMode,
      home: MainPage(),
    );
  }
}
