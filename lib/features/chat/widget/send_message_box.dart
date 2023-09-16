import 'package:flutter/material.dart';

class SendMessageBox extends StatelessWidget {
  const SendMessageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Send Message',
          suffixIcon: const Icon(Icons.send, color: Color(0XFF2B475E),),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0XFF2B475E),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0XFF2B475E),
            ),
          ),
        ),
      ),
    );
  }
}
