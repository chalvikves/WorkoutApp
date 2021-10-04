import 'package:flutter/material.dart';
import '../../static/colors.dart' as col;

class EmptySavedList extends StatelessWidget {
  const EmptySavedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle _outlinedButtonStyle = OutlinedButton.styleFrom(
      primary: MediaQuery.of(context).platformBrightness == Brightness.light
          ? col.colorSchemeLight.primary
          : col.colorSchemeDark.primary,
      onSurface: MediaQuery.of(context).platformBrightness == Brightness.light
          ? col.colorSchemeLight.onSurface
          : col.colorSchemeDark.onSurface,
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? col.colorSchemeLight.background
              : col.colorSchemeDark.background,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'No saved workouts',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'See all your saved workouts here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            height: 40,
            child: OutlinedButton(
              onPressed: () => print('test'),
              child: Text('Create new workout'),
              style: _outlinedButtonStyle,
            ),
          )
        ],
      ),
    );
  }
}
