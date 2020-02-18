import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool  obscure;

  const InputField({this.icon, this.hint, this.obscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(
          icon,
          size: 36,
          color: Colors.white,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pinkAccent),
        ),
      ),
      style: TextStyle(color: Colors.white),
      obscureText: obscure,
    );
  }
}
