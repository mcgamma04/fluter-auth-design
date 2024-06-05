import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CustomTextField(
              labelText: 'Full Name',
              controller: fullNameController,

            ),
            SizedBox(height: 10),
            CustomTextField(
              labelText: 'Email',
              controller: emailController,
            ),
            SizedBox(height: 10),
            CustomTextField(labelText: "Address", controller: addressController),
            SizedBox(height: 16,),
            CustomTextField(
              labelText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 10),
            CustomTextField(
              labelText: 'Confirm Password',
              controller: confirmPasswordController,
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Sign Up',
              onPressed: () {
                // Implement sign-up logic
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
