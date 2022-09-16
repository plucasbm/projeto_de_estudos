import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final bool obscureText;
  const CustomTextField({Key? key, required this.label, required this.onChanged, this.obscureText = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
              decoration: InputDecoration(
                label: Text(label),
              ),
              onChanged: onChanged,
              obscureText: obscureText,
            );
  }
}