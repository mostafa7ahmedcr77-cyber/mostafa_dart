import 'dart:developer';

import 'package:flutter/material.dart';

// ignore: must_be_immutable

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() {
    return CounterState();
  }
}

class CounterState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          counter.toString(),
          style: TextStyle(fontSize: 100, fontWeight: .bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("counter $counter");
          counter++;
          setState(() {});
        },
        child: Icon(Icons.add, size: 30, color: Colors.black),
      ),
    );
  }
}
