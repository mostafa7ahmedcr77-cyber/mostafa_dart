import 'package:flutter/material.dart';
import 'package:my_projict/screens/app_section.dart';
import 'package:my_projict/screens/counter_screen.dart';
import 'package:my_projict/screens/explor_screen.dart';
import 'package:my_projict/screens/home_screen.dart';
import 'package:my_projict/screens/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Demo Flutter",
      theme: ThemeData(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: AppSection()
          ,
    ),
  );
}
