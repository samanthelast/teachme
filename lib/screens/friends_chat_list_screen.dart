import 'package:flutter/material.dart';

class FriendsChatList extends StatefulWidget {
  @override
  _FriendsChatListState createState() => _FriendsChatListState();
}

class _FriendsChatListState extends State<FriendsChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title:Text('Messages')),
      body: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/chat1.jpg'),
              ),
              title: Text(
                'Alex White',
              ),
              subtitle: Text('wow i didn\'t know how Farsi sounds like!'),
              
              onTap: () {
                
              },
            ),
            new Divider(
              height: 1.0,
              indent: 1.0,
            ),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/chat2.jpg'),
              ),
              title: Text(
                'Narges Sharifnasab',
              ),
              subtitle: Text('damn girl! i want to make a Damnoosh now!'),
              
              onTap: () {
                
              },
            ),
            new Divider(
              height: 1.0,
              indent: 1.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/chat3.jpg'),
              ),
              title: Text(
                'Ella Smith',
              ),
              subtitle: Text('thanks for the tutorials!'),
              
              onTap: () {
                
              },
            ),
            new Divider(
              height: 1.0,
              indent: 1.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/chat4.jpg'),
              ),
              title: Text(
                'Saman Ariyanpour',
              ),
              subtitle: Text('did you came back from Tehran?'),
              
              onTap: () {
                
              },
            ),
            new Divider(
              height: 1.0,
              indent: 1.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/chat5.jpg'),
              ),
              title: Text(
                'Sara Mercer',
              ),
              subtitle: Text('call me plz'),
              
              onTap: () {
                
              },
            ),
            new Divider(
              height: 1.0,
              indent: 1.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/chat6.jpg'),
              ),
              title: Text(
                'Saman Wilson',
              ),
              subtitle: Text('alright see ya.'),
              
              onTap: () {
                
              },
            ),
            new Divider(
              height: 1.0,
              indent: 1.0,
            ),
          ],
        ),
    );
  }
}