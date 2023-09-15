import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 10,top: 10),
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Color(0XFF2B475E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),

            )
        ),
        child: const Text(
          'Hello Mustafa',
          style: TextStyle(color: Colors.white, fontSize: 16,),
        ),
      ),
    );
  }
}
