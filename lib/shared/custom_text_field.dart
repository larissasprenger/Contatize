import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.label,
    required this.inputType,
    this.textInputAction = TextInputAction.next,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        validator: (value) {
          return null;
        },
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        keyboardType: inputType,
        obscureText: isPassword,
        textInputAction: textInputAction,
      ),
    );
  }
}
