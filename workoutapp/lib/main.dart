import 'package:flutter/material.dart';
import 'static/colors.dart' as col;
import 'views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: col.colorSchemeLight,
      ),
      darkTheme: ThemeData.from(
        colorScheme: col.colorSchemeDark,
      ),
      // TODO: Implement high contrast theme
      // highContrastTheme: ThemeData(
      //   colorScheme: col.colorSchemeLightHigh,
      // ),
      // highContrastDarkTheme: ThemeData(
      //   colorScheme: col.colorSchemeDarkHigh,
      // ),
      home: Home(),
    );
  }
}
