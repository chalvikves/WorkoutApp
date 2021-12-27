import 'package:flutter/material.dart';
import 'package:workoutapp/views/Widgets/CardForWorkout.dart';
import '../static/colors.dart' as col;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController _statController = PageController();
  /* 
  TODO:
    * Navigation for buttons
    
  */

  @override
  void dispose() {
    _statController.dispose();
    super.dispose();
  }

  var iconsMult = [
    Icon(Icons.leaderboard_rounded, size: 72),
    Icon(Icons.account_balance_rounded, size: 72),
    Icon(Icons.label_important_outline_rounded, size: 72),
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
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Let's crush this workout!",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Start a new workout",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CardForWorkout(
                  onPressed: () => print('hi'),
                  title: "Start a new workout",
                  muscles: "You can do this",
                  icon: Icon(
                    Icons.add_rounded,
                    size: 32,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Statistics",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000),
                        blurRadius: 20,
                        blurStyle: BlurStyle.normal,
                        offset: Offset(5, 10),
                      ),
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      // TODO: Lägg till flera "sidor" för de olika statistikerna så man kan scrolla runt
                      child: Center(
                        child: PageView(
                          controller: _statController,
                          children: [...iconsMult],
                        ),
                      ),
                    ),
                    elevation: 3,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
