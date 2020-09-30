import 'package:flutter/material.dart';
import 'data/chatsrepository.dart';

void main() => runApp(MyApp());

//MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'DSCKU Whatsapp Clone',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
      ),
      home: WhatsappUI(),
      debugShowCheckedModeBanner: false,
    ));
  }
}

class WhatsappUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chats = ChatsRepository.getAll();

    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
              title: Text('Whatsapp'),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search, color: Color(0xFFFFFFFF),), onPressed: null),
                IconButton(icon: Icon(Icons.more_vert, color: Color(0xFFFFFFFF),), onPressed: null),
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    child: Icon(Icons.photo_camera),
                  ),
                  Tab(
                    child: Text('CHATS'),
                  ),
                  Tab(
                    child: Text('STATUS'),
                  ),
                  Tab(
                    child: Text('CALLS'),
                  ),
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Camera"),
              ),
              Center(
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: chats.length,
                    itemBuilder: (context, index) {
                      var chat = chats[index];
                      var message = chat.messages.last;

                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(chat.avatar ?? "images/person.jpeg"),
                        ),
                        title: Text(chat.displayName),
                        subtitle: Text(
                          "${(chat.isGroupChat ? message.from + ': ' : '')}${message.messageText}",
                          maxLines: 1,
                        ),
                        trailing: Text(message.sendTime),
                      );
                    }),
              ),
              Center(
                child: Text("Status"),
              ),
              Center(
                child: Text("Calls"),
              ),
            ],
          )),
    );
  }
}
