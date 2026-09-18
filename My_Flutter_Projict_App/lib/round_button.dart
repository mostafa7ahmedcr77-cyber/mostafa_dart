import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const RoundButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 42,
        height: 42,

        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff9A9AAC),
        ),

        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}