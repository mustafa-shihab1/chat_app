import 'package:flutter/material.dart';

class BoxTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Function(String)? onChanged;
  const BoxTextField({
    required this.hintText,
    required this.obscureText,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border:  const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      ),
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
