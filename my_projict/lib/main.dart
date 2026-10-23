import 'package:flutter/material.dart';
import 'package:my_projict/screens/login_screen.dart';


class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App Flutter",
      theme: ThemeData(),
      darkTheme: ThemeData(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}