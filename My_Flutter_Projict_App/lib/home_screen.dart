import 'package:flutter/material.dart';
import 'gender_card.dart';
import 'number_card.dart';
import 'result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 150;
  int weight = 60;
  int age = 26;

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff252941),
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),

              child: Column(
                children: [
                  // ================= GENDER =================

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GenderCard(
                            icon: Icons.male,
                            title: 'Male',
                            selected: isMale,
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: GenderCard(
                            icon: Icons.female,
                            title: 'Female',
                            selected: !isMale,
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ================= HEIGHT =================

                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),

                      decoration: BoxDecoration(
                        color: const Color(0xff37374C),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Height',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                                CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '$height',
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(width: 4),

                              const Text(
                                'cm',
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),

                          Slider(
                            value: height.toDouble(),
                            min: 100,
                            max: 220,
                            activeColor: const Color(0xffED3B70),
                            inactiveColor: Colors.white,
                            onChanged: (value) {
                              setState(() {
                                height = value.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ================= WEIGHT + AGE =================

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: NumberCard(
                            title: 'Weight',
                            value: weight,
                            onMinus: () {
                              if (weight > 1) {
                                setState(() {
                                  weight--;
                                });
                              }
                            },
                            onPlus: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: NumberCard(
                            title: 'Age',
                            value: age,
                            onMinus: () {
                              if (age > 1) {
                                setState(() {
                                  age--;
                                });
                              }
                            },
                            onPlus: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ================= CALCULATE BUTTON =================

          SizedBox(
            width: double.infinity,
            height: 75,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffED3B70),
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),

              onPressed: () {
                double bmi =
                    weight / ((height / 100) * (height / 100));

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      bmi: bmi,
                    ),
                  ),
                );
              },

              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}