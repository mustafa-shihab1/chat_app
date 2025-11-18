import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');

  Future<void> sendMessage(String content) {
    return messages.add({
      'message': content,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
