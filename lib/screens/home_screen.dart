import 'package:flutter/material.dart';
import 'package:teachme/screens/friends_chat_list_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TeahMe',style: TextStyle(fontFamily: 'PacificoRegular'),),actions: <Widget>[
        IconButton(icon: new Icon(Icons.chat_bubble_outline),
              onPressed: (){
_RouteToRegisterScreen(context);

              },
          ),
      ],),
      
    );
  }
    void _RouteToRegisterScreen(BuildContext context) {
     
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FriendsChatList(),
        ));
  }
}