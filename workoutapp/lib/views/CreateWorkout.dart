import 'package:flutter/material.dart';
import '../static/colors.dart' as col;

class CreateWorkout extends StatefulWidget {
  const CreateWorkout({Key? key}) : super(key: key);

  @override
  _CreateWorkoutState createState() => _CreateWorkoutState();
}

class _CreateWorkoutState extends State<CreateWorkout> {
  int _currentStep = 0;
  int get currentStep => _currentStep;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      Step(
        title: Text('Name the workout'),
        content: Text('Hi'),
        isActive: currentStep >= 0,
        state: currentStep >= 0 ? StepState.complete : StepState.disabled,
      ),
      Step(
        title: Text('Add exercises'),
        content: Text('Hi'),
        isActive: currentStep >= 0,
        state: currentStep >= 1 ? StepState.complete : StepState.disabled,
      ),
      Step(
        title: Text('Add rest time between sets'),
        content: Text('Hi'),
        isActive: currentStep >= 0,
        state: currentStep >= 2 ? StepState.complete : StepState.disabled,
      ),
    ];

    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: col.colorSchemeLight,
      ),
      darkTheme: ThemeData.from(
        colorScheme: col.colorSchemeDark,
      ),
      home: Scaffold(
        body: Stepper(
          currentStep: _currentStep,
          type: stepperType,
          physics: ScrollPhysics(),
          onStepTapped: (step) => tapped(step),
          onStepContinue: continued,
          onStepCancel: cancel,
          steps: steps,
        ),
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
