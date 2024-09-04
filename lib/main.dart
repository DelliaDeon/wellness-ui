import 'package:flutter/material.dart';
import 'package:wellness_ui/home.dart';
import 'package:wellness_ui/workout_screen.dart';

void main(){
  runApp(WellnessUI());
}

class WellnessUI extends StatefulWidget {
  const WellnessUI({super.key});

  @override
  State<WellnessUI> createState() => _WellnessUIState();
}

class _WellnessUIState extends State<WellnessUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',

      routes: {
        '/home': (context) => HomeScreen(),
        '/workout' : (context) => WorkoutScreen(),
      },
    );
  }
}
