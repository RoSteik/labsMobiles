import 'package:flutter/material.dart';

import 'package:my_project/lab2/widgets/custom_button.dart';
import 'package:my_project/lab2/widgets/custom_text_button.dart';
import 'package:my_project/lab2/widgets/custom_text_field.dart';


class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextField(labelText: 'Name',),
            const SizedBox(height: 10),
            const CustomTextField(labelText: 'Email',),
            const SizedBox(height: 10),
            const CustomTextField(labelText: 'Password', obscureText: true,),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Sign Up',
              onPressed: () {  },
            ),
            CustomTextButton(
              text: 'Already have an account? Login',
              onPressed: () => Navigator.pushNamed(context, '/login'),
            ),
          ],
        ),
      ),
    );
  }
}
