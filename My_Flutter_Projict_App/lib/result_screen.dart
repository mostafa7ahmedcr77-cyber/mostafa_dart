import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;

  const ResultScreen({
    super.key,
    required this.bmi,
  });

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getMessage() {
    if (bmi >= 25) {
      return 'You Have a Higher Than Normal Body Weight.';
    } else if (bmi > 18.5) {
      return 'You Have a Normal Body Weight,\nGood Job.';
    } else {
      return 'You Have a Lower Than Normal Body Weight.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff252941),
        centerTitle: true,

        title: const Text(
          'BMI Calculator',
          style: TextStyle(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                        color: const Color(0xff37374C),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            getResult(),
                            style: const TextStyle(
                              color: Color(0xff19D984),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 25),

                          Text(
                            bmi.toStringAsFixed(1),
                            style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 40),

                          Text(
                            getMessage(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ================= RE-CALCULATE =================

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
                Navigator.pop(context);
              },

              child: const Text(
                'Re - Calculate',
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