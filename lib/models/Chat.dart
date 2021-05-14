class Chat {
  String id;
  String name;
  bool isOnline;
  List<Message> messages;

  Chat(
      {required this.id,
      required this.name,
      required this.isOnline,
      required this.messages});
}

class Message {
  DateTime time;
  String content;
  String senderId;

  Message({required this.time, required this.content, required this.senderId});
}
