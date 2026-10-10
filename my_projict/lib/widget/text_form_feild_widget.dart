import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
    required this.lable,
    required this.keyboardType,
  });

  final Widget lable;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: lable,
        labelStyle: TextStyle(color: Colors.grey[900]),
        suffixIcon: Icon(Icons.remove_red_eye),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
