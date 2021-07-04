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
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: col.black,
        scaffoldBackgroundColor: col.white,
        accentColor: col.white,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: col.black,
        primaryColor: col.white,
        accentColor: col.black,
      ),
      home: Home(),
    );
  }
}
