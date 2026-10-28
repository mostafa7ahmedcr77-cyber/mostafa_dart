import 'package:flutter/material.dart';
import 'package:my_new_project/screens/home_screen.dart';
import 'package:my_new_project/screens/result_screen.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
        ResultScreen.route: (context) => ResultScreen(),
      },
    );
  }
}
