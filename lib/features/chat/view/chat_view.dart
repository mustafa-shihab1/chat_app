import 'package:chat_app/features/chat/widget/chat_bubble.dart';
import 'package:chat_app/features/chat/widget/send_message_box.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../controller/chat_controller.dart';
import '../model/message.dart';
import '../widget/chat_bubble_friend.dart';

class ChatView extends StatelessWidget {
  ChatView({Key? key}) : super(key: key);

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<ChatController>(builder: (controller) {
      return StreamBuilder<QuerySnapshot>(
          stream: controller.messages
              .orderBy('timestamp', descending: true)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<Message> messagesList = [];
              for (var i = 0; i < snapshot.data!.docs.length; i++) {
                messagesList.add(Message.fromJson(
                    snapshot.data!.docs[i].data() as Map<String, dynamic>));
              }
              return Scaffold(
                appBar: AppBar(
                  leading: Container(),
                  backgroundColor: const Color(0XFF2B475E),
                  title: Container(
                    alignment: Alignment.center,
                    width: size.width * 0.65,
                    child: Row(
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
                  actions: [
                    IconButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Get.offAllNamed(Routes.loginView);
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                body: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        reverse: true,
                        controller: _scrollController,
                        itemBuilder: (context, index) {
                          return messagesList[index].sender ==
                                  controller.userEmail
                              ? ChatBubble(
                                  size: size,
                                  message: messagesList[index],
                                )
                              : ChatBubbleFriend(
                                  size: size,
                                  message: messagesList[index],
                                );
                        },
                        itemCount: messagesList.length,
                      ),
                    ),
                    SendMessageBox(
                      chatController: controller,
                      scrollController: _scrollController,
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Error...'));
            } else {
              return Scaffold(body: Center(child: CircularProgressIndicator()));
            }
          });
    });
  }
}
