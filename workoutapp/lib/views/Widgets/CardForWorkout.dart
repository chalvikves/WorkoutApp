import 'package:flutter/material.dart';

class CardForWorkout extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final String muscles;
  final Icon icon;

  const CardForWorkout({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.muscles,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          muscles,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        trailing: icon,
      ),
    );
  }
}
