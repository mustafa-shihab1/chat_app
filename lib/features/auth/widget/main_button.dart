import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const MainButton({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0XFF2B475E),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
