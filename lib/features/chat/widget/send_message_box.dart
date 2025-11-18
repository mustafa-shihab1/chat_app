import 'package:chat_app/features/chat/controller/chat_controller.dart';
import 'package:flutter/material.dart';

class SendMessageBox extends StatelessWidget {
  final ChatController chatController;
  final ScrollController scrollController;
  final TextEditingController messageController = TextEditingController();
  SendMessageBox({
    super.key,
    required this.chatController,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: TextField(
        controller: messageController,
        decoration: InputDecoration(
          hintText: 'Send Message',
          suffixIcon: IconButton(
            onPressed: () {
              chatController.sendMessage(
                messageController.text,
              );
              messageController.clear();
              scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            },
            icon: Icon(
              Icons.send,
              color: Color(0XFF2B475E),
            ),
          ),
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
