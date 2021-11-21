import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workoutapp/views/CreateWorkout.dart';
import 'package:workoutapp/views/dashboard.dart';
import 'package:workoutapp/views/settings.dart';
import 'package:workoutapp/views/statistics.dart';
import 'package:workoutapp/views/workouts.dart';
import '../static/colors.dart' as col;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int index = 1;

  @override
  Widget build(BuildContext context) {
    final _pages = [
      CreateWorkout(),
      //Workouts(),
      Dashboard(),
      Statistics(),
    ];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? Brightness.dark
                : Brightness.light,
        statusBarBrightness:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? Brightness.light
                : Brightness.dark,
      ),
      child: MaterialApp(
        home: SafeArea(
          bottom: false,
          top: false,
          child: Scaffold(
            body: _pages[index],
            backgroundColor: Theme.of(context).colorScheme.background,
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center_rounded),
                  label: 'Workouts',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.leaderboard_rounded),
                  label: 'Statistics',
                ),
              ],
              type: BottomNavigationBarType.fixed,
              backgroundColor: Theme.of(context).colorScheme.background,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Theme.of(context).colorScheme.onSurface,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              currentIndex: index,
              onTap: (ind) {
                setState(() {
                  index = ind;
                  index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
