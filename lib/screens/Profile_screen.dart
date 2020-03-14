import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String view = "grid";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('paniz_ariyamanesh'),
      ),
      endDrawer: Drawer(),
      body: SingleChildScrollView(
          child: Center(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
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
              Container(
                height: 320,
                width: MediaQuery.of(context).size.width - 60,
                margin: EdgeInsets.only(top: 100),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 80),
                      Container(
                        
                        
                        child: Text(
                          'Paniz Ariyanmanesh',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                       
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  '302',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'POSTS',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '10K',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'FOLLOWERS',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '120',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'FOLLOWING',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '📈Trader',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '🧠Mentor',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '👥Let\'s grow together',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 65),
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
              )
            ],
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  Story('assets/images/story-tutorial.jpg', 'Tutorials',
                      Colors.blue),
                  SizedBox(
                    width: 10,
                  ),
                  Story(
                      'assets/images/story-travel.jpg', 'Travel', Colors.pink),
                  SizedBox(
                    width: 10,
                  ),
                  Story('assets/images/story-mindset.jpg', 'Mindset',
                      Colors.blue),
                  SizedBox(
                    width: 10,
                  ),
                  Story('assets/images/story-book.jpg', 'MyBooks', Colors.blue),
                  SizedBox(
                    width: 10,
                  ),
                  Story('assets/images/story-car.jpg', 'Cars', Colors.pink),
                  SizedBox(
                    width: 10,
                  ),
                  Story('assets/images/story-vacation.jpg', 'Vacation',
                      Colors.pink),
                ])),
          ),
          Divider(),
          buildImageViewButtonBar(),
          Divider(height: 0.0),
          buildImageViewButtonBar(),
          buildImageViewButtonBar(),
          buildImageViewButtonBar(),
          buildImageViewButtonBar(),
          buildImageViewButtonBar(),
          buildImageViewButtonBar(),
          buildImageViewButtonBar(),
          buildImageViewButtonBar(),
          buildImageViewButtonBar(),
        ],
      ))),
    );
  }

  Widget Story(String imageAdd, String title, Color borderColor) {
    return Column(
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 3),
            shape: BoxShape.circle,
            color: borderColor,
            image: new DecorationImage(
              image: new ExactAssetImage(imageAdd),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  Row buildImageViewButtonBar() {
    Color isActiveButtonColor(String viewName) {
      if (view == viewName) {
        return Colors.blueAccent;
      } else {
        return Colors.black26;
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.school, color: isActiveButtonColor("grid")),
          onPressed: () {
            changeView("grid");
          },
        ),
        IconButton(
          icon: Icon(Icons.camera, color: isActiveButtonColor("feed")),
          onPressed: () {
            changeView("feed");
          },
        ),
      ],
    );
  }

  changeView(String viewName) {
    setState(() {
      view = viewName;
    });
  }
}
