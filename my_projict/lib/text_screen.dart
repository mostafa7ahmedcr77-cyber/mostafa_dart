import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Hi Flutter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight(300),
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.white, size: 30),
        actions: [Icon(Icons.shop_2_sharp, color: Colors.white, size: 30)],
      ),
      body: Column(
        spacing: 10,
        mainAxisAlignment: .center,
        children: [Text("Mostafa"), Text("Ahmed")],
      ),
    );
  }
}
