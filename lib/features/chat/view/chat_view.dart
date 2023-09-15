import 'package:chat_app/features/chat/widget/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF2B475E),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/scholar.png', height: 60),
            const SizedBox(width: 5),
            const Text(
              'Chat',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemBuilder:(context, index) {
            return ChatBubble(size: size);
          },
          itemCount: 10,
      ),
    );
  }
}

