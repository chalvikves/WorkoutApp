import 'package:flutter/material.dart';
import 'package:workoutapp/views/Widgets/CardForWorkout.dart';
import '../static/colors.dart' as col;

class Workouts extends StatefulWidget {
  const Workouts({Key? key}) : super(key: key);

  @override
  _WorkoutsState createState() => _WorkoutsState();
}

class _WorkoutsState extends State<Workouts> {
  List<String> titles = [
    'Push workout',
    'Pull workout',
    'Legs workout',
  ];
  List<String> muscles = [
    "Chest, triceps and Shoulders",
    "Back, Biceps",
    'Legs'
  ];

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
                Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Saved Workouts",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: titles.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                CardForWorkout(
                                  title: titles[index],
                                  onPressed: () => print('hi'),
                                  muscles: muscles[index],
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Kanske en grid med bara små rutor för varje, eller så göra en lista såhär",
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Past workouts",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: titles.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                CardForWorkout(
                                  title: titles[index],
                                  onPressed: () => print('hi'),
                                  muscles: muscles[index],
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
