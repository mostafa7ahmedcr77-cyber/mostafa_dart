import 'package:flutter/material.dart';

class TitleHeaderWidget extends StatelessWidget {
  const TitleHeaderWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: .w600,
            color: Color(0xff181725),
          ),
        ),
        Text(
          "see all",
          style: TextStyle(
            fontSize: 16,
            fontWeight: .w600,
            color: Color(0xff53B175),
          ),
        ),
      ],
    );
  }
}
