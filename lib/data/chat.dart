import 'message.dart';

class Chat {
  String avatar;
  String displayName;
  bool isGroupChat;
  List<Message> messages;

  Chat(String displayName, List<Message> messages, { String avatar, isGroupChat: false }) {
    this.displayName = displayName;
    this.messages = messages;
    this.isGroupChat = isGroupChat;
    this.avatar = avatar;
  }
}
