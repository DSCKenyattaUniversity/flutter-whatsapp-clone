import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//MyApp
class MyApp extends StatelessWidget{
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
    return DefaultTabController(
          initialIndex: 1,
          length: 4,
          child: Scaffold( 
        appBar: AppBar( 
          title: Text('Whatsapp'),
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            tabs: <Widget>[ 
            Tab(child: Icon(Icons.photo_camera),),
            Tab(child: Text('CHATS'),),
            Tab(child: Text('STATUS'),),
            Tab(child: Text('CALLS'),),
          ],)
          ),
          body: TabBarView(
            children: <Widget>[
            Text( 
              "Hello"
            ),
            Center(child: ListView(children: <Widget>[
             ListTile( 
                leading: CircleAvatar(),
                title:  Text('Alexa'),
                subtitle: Text('last seen'),
                trailing: Text('3:19 pm'),
              ),
              Divider(),
              ListTile( 
                leading: CircleAvatar(),
                title:  Text('John'),
                subtitle: Text('last seen'),
                trailing: Text('12:00 pm'),
              ),
              Divider(),
              ListTile( 
                leading: CircleAvatar(),
                title:  Text('Hanna'),
                subtitle: Text('last seen'),
                trailing: Text('2:00 am'),
              ),
              Divider(),
              ListTile( 
                leading: CircleAvatar(),
                title:  Text('Sammie'),
                subtitle: Text('last seen'),
                trailing: Text('4:50 pm'),
              ),
              Divider(),
              ListTile( 
                leading: CircleAvatar(),
                title:  Text('Kate'),
                subtitle: Text('last seen'),
                trailing: Text('6:50 pm'),
              ),
              Divider(),
              ListTile( 
                leading: CircleAvatar(),
                title:  Text('Christine'),
                subtitle: Text('last seen'),
                trailing: Text('7:45 pm'),
              ),
              Divider(),
              ListTile( 
                leading: CircleAvatar(),
                title:  Text('Erick'),
                subtitle: Text('last seen'),
                trailing: Text('10:50 pm'),
              ),
              Divider(),
              
            ],),
            ),
            Text( 
              "status"
            ),
            Text( 
              "calls"
            ),
          ],)
      ),
    ) ;
  }
}
