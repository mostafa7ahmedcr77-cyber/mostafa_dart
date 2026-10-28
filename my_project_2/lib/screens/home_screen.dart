import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_new_project/model/user_bmi_model.dart';
import 'package:my_new_project/screens/result_screen.dart';
import 'package:my_new_project/widgets/gender_widget.dart';
import 'package:my_new_project/widgets/info_user_widget.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});
  static String route = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool SwitchBtn = false;
  bool isMale = true;
  int height = 150;
  int weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(
        elevation: 100,
        backgroundColor: Color(0xff1C2135),
        titleSpacing: 90,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: .w600,
            color: Color(0xffFFFFFF),
          ),
          textAlign: .center,
        ),
        leading: Switch(
          value: SwitchBtn,
          onChanged: (value) {
            SwitchBtn = value;
            setState(() {});
          },
          activeColor: Color(0xff3D81E8),
          inactiveThumbColor: Colors.grey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 25,
          children: [
            Row(
              spacing: 10,
              children: [
                GenderWidget(
                  isSelected: isMale,
                  onTap: () {
                    isMale = true;
                    setState(() {});
                  },
                  image: "assets/icons/material-symbols_male.png",
                  title: "Male",
                ),
                GenderWidget(
                  isSelected: !isMale,
                  onTap: () {
                    isMale = false;
                    setState(() {});
                  },
                  image: "assets/icons/material-symbols_female.png",
                  title: "Female",
                ),
              ],
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: .w300,
                        color: Color(0xff8B8C9E),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .end,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: .w700,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: .w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      min: 50,
                      max: 200,
                      value: height.toDouble(),
                      activeColor: Color.fromARGB(255, 23, 144, 243),
                      onChanged: (value) {
                        height = value.toInt();
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  InfoUserWidget(
                    title: "Weight",
                    value: weight,
                    add: () {
                      if (weight <= 100) {
                        weight++;
                        setState(() {});
                      }
                    },
                    remove: () {
                      if (weight >= 2) {
                        weight--;
                        setState(() {});
                      }
                    },
                  ),
                  InfoUserWidget(
                    title: "Age",
                    value: age,
                    add: () {
                      if (age <= 70) {
                        age++;
                        setState(() {});
                      }
                    },
                    remove: () {
                      if (age >= 5) {
                        age--;
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButtonBMI(
        title: "Calculate",
        onPressed: () {
          // print(calculateBmi);
          var user = UserBmiModel(
            gender: isMale ? "Male" : "Female",
            height: height,
            weight: weight,
            age: age,
          );
          Navigator.of(context).pushNamed(ResultScreen.route, arguments: user);
        },
      ),
    );
  }
}

class CustomButtonBMI extends StatelessWidget {
  const CustomButtonBMI({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color.fromARGB(255, 23, 144, 243),
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Text(
        title,
        style: TextStyle(fontSize: 32, fontWeight: .w600, color: Colors.white),
      ),
    );
  }
}
