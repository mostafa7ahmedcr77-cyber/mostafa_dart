import 'package:flutter/material.dart';

class GroceriesContainer extends StatelessWidget {
  const GroceriesContainer({
    super.key,
    required this.image,
    required this.title,
    required this.Color,
  });
  final String image;
  final String title;
  final Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        spacing: 15,
        children: [
          Image.asset(image),

          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: .w600,
              color: Color(0xff3E423F),
            ),
          ),
        ],
      ),
    );
  }
}
