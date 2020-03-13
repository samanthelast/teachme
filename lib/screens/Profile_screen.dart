import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('paniz_ariyamanesh'),
      ),
      endDrawer: Drawer(),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: new AssetImage('assets/images/paniz_back2.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top:100),
                  
                  child: Center(
                    child: Card(
                child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width - 40,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(

                        children: <Widget>[Text('Learn about Iranian culture',style: TextStyle(fontSize: 16),)],
                      ),
                      
                     
                     
                      
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(

                        children: <Widget>[Card(child:Container(height: 100,width: 100,child: Image.asset('assets/images/speakfarsi.jpg'),)), Text('speak Farsi',style: TextStyle(fontSize: 16),)],
                      ),
                      Column(
                      children: <Widget>[Card(child:Container(height: 100,width: 100,child: Image.asset('assets/images/damnoosh.jpg'),)), Text('Damnoosh',style: TextStyle(fontSize: 16),)],
                      ),
                      Column(
                      children: <Widget>[Card(child:Container(height: 100,width: 100,child: Image.asset('assets/images/food.jpg'),)), Text('cooking',style: TextStyle(fontSize: 16),)],
                      ),
                     
                      
                    ],
                  ),
             
               
                ],
              ),
            ))
                  ),
                ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 100.0, // (background container size) - (circle height / 2)
            child: Card(
                child: SizedBox(
              height: 250,
              width: MediaQuery.of(context).size.width - 40,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 60),
                  Text(
                    'Paniz Ariyamanesh',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(

                        children: <Widget>[Text('302',style: TextStyle(fontSize: 16),), Text('POSTS',style: TextStyle(fontSize: 10),)],
                      ),
                      Column(
                       children: <Widget>[Text('10.3K',style: TextStyle(fontSize: 16),), Text('FOLLOWERS',style: TextStyle(fontSize: 10),)],
                      ),
                      Column(
                       children: <Widget>[Text('120',style: TextStyle(fontSize: 16),), Text('FOLLOWING',style: TextStyle(fontSize: 10),)],
                      ),
                     
                      
                    ],
                  ),
                   SizedBox(height: 30),
                  Text(
                    '22 y.o Iranian living in Paris',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '🇮🇷 🇫🇷',
                    style: TextStyle(fontSize: 20),
                  ),
                  
                ],
              ),
            )),
          ),
          Positioned(
            top: 50.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                image: new DecorationImage(
                  image: new ExactAssetImage(
                      'assets/images/paniz_profile_picture.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
