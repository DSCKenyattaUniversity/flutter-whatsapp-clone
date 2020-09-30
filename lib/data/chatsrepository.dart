import 'chat.dart';
import 'message.dart';

class ChatsRepository {
  static List<Chat> getAll() {
    return [
      Chat("DSC Kenyatta University", [
        Message("Phelcia", "Yesterday", "Hello everyone,\nI hope you're all doing great.\n\nIf we were to organize virtual DSC KU sessions;\n1. Would you attend? If no, why?\n2. If yes, what day and time would work for you?")
      ], isGroupChat: true, avatar: "images/dsc_icon.jpeg"),
      Chat("Alexa", [
        Message("Alexa", "3:19 pm", "Have you heard from Siri of late?")
      ]),
      Chat("Erick", [
        Message("Erick", "10.50 pm", "Check your email.")
      ], avatar: "images/eric_icon.jpeg"),
      Chat("John", [
        Message("John", "12:00 pm", "We lala!")
      ]),
      Chat("Hanna", [
        Message("Hanna", "2:00 pm", "Lol!")
      ]),
      Chat("Sammie", [
        Message("Me", "4:50 pm", "Talk latter")
      ]),
      Chat("Kate", [
        Message("Me", "6:50 pm", "I don't get you!")
      ]),
      Chat("Christine", [
        Message("Me", "7:45 pm", "Peace")
      ]),
    ];
  }
}
