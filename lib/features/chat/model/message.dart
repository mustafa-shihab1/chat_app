class Message {
  final String message;
  final String sender;
  Message(this.message, this.sender);

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
        json['message'].toString() ?? '', json['sender'].toString() ?? '');
  }
}
