import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool obscureText;

  CustomTextField({
    required this.labelText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
