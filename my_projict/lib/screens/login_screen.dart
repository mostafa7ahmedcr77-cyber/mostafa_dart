import 'package:flutter/material.dart';
import 'package:my_projict/widget/text_form_feild_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormFeild(
                lable: Text("Email"),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomTextFormFeild(
                lable: Text("Password"),
                keyboardType: TextInputType.visiblePassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
