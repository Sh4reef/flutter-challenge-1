import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {Key? key,
      this.labelText = 'labelText',
      this.obscureText = false,
      this.prefixIcon})
      : super(key: key);

  final String labelText;
  final bool obscureText;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      cursorColor: Colors.green[400],
      style: TextStyle(color: Colors.green[600], fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon,
        border: InputBorder.none,
        labelStyle: const TextStyle(fontSize: 12),
        floatingLabelStyle: TextStyle(fontSize: 14, color: Colors.grey[600]),
      ),
    );
  }
}
