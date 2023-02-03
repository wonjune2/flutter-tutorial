import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('한글 폰트 입니다.'),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '한글 폰트 입니다.',
                      style: GoogleFonts.notoSans(),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('한글 폰트 입니다.'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final FlexScheme flexSchemeData;

  const Box({
    super.key,
    required this.flexSchemeData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        border: Border.all(),
      ),
    );
  }
}
