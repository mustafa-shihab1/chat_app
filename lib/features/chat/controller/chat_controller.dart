import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');

  String get userEmail => FirebaseAuth.instance.currentUser!.email!;

  Future<void> sendMessage(String content) {
    return messages.add({
      'message': content,
      'timestamp': FieldValue.serverTimestamp(),
      'sender': userEmail,
    });
  }
}
