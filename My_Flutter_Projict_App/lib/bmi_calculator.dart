import 'package:flutter/material.dart';
import 'home_screen.dart';

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff1D2138),
        fontFamily: 'Arial',
      ),
      home: const HomeScreen(),
    );
  }
}