import 'package:chat_app/features/chat/model/message.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.size,
    required this.message,
  });

  final Size size;
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 5),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            color: Color(0XFF2B475E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )),
        child: Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
