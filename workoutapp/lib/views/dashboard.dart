import 'package:flutter/material.dart';
import 'package:workoutapp/views/Widgets/CardForWorkout.dart';
import 'package:workoutapp/views/Widgets/emptyPast.dart';
import '../static/colors.dart' as col;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  /* 
  TODO:
    * Navigation for buttons
    
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: col.colorSchemeLight,
      ).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: col.colorSchemeLight.background,
            onPrimary: col.colorSchemeLight.onBackground,
            onSurface: col.colorSchemeLight.onSurface,
            elevation: 3,
            minimumSize: Size(50, 90),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      darkTheme: ThemeData.from(
        colorScheme: col.colorSchemeDark,
      ).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: col.colorSchemeDark.background,
            onPrimary: col.colorSchemeDark.onBackground,
            onSurface: col.colorSchemeDark.onSurface,
            elevation: 3,
            minimumSize: Size(50, 90),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Let's crush this workout!",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Create a new workout",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CardForWorkout(
                  onPressed: () => print('hi'),
                  title: "Create a new workout",
                  muscles: "You can do this",
                  icon: Icon(
                    Icons.add_rounded,
                    size: 32,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Last workout",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  child: EmptyPastList(
                    title: 'No last workout',
                    desc: "See your past workout here. Let's workout!",
                  ),
                ),
                // CardForWorkout(
                //   onPressed: () => print('hi'),
                //   title: "Push workout",
                //   muscles: "Chest, triceps and Shoulders",
                //   icon: Icon(Icons.arrow_forward_ios_rounded),
                // ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Statistics",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 200,
                    child: Center(
                      child: Icon(
                        Icons.leaderboard_rounded,
                        size: 72,
                      ),
                    ),
                  ),
                  elevation: 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
