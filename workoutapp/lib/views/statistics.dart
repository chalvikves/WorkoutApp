import 'package:flutter/material.dart';
import '../static/colors.dart' as col;

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  /* 
  TODO: 
    * All the statistics (and probably the graph too) 
   */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: col.colorSchemeLight,
      ),
      darkTheme: ThemeData.from(
        colorScheme: col.colorSchemeDark,
      ),
      home: Scaffold(
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 300,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
