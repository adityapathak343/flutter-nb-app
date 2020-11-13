import 'package:flutter/material.dart';

import './textfile.dart';
// import './buttonfile.dart';
import './cards.dart';
import './models/users.dart';
import './rowcard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextStyle homeButtonTextStyle = TextStyle(fontSize: 20,);
  var favButtonColor = Colors.white;
  User thisUser = User(firstName: 'Aditya', didLike: false);
  //var fname = thisUser.firstName;
  favoriteButton() {
    setState(() {
      if (favButtonColor == Colors.red) {
        favButtonColor = Colors.white;
        thisUser.didLike = false;
        print(thisUser.didLike);
      } else {
        favButtonColor = Colors.red;
        thisUser.didLike = true;
        print(thisUser.didLike);
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: (ThemeData(
        fontFamily: 'ProductSans',
      )),
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            'NOT BLIND',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              letterSpacing: 4,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.favorite),
                              color: favButtonColor,
                              onPressed: favoriteButton,
                            ),
                            IconButton(
                              icon: Icon(Icons.settings),
                              color: Colors.white,
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Text(
                          'The Not Blind Project',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                          ),
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: homeButtonTextStyle,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'About',
                  style: homeButtonTextStyle,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
                ListTile(
                title: Text(
                  'Sources',
                  style: homeButtonTextStyle,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  TextFunction('WELCOME'),
                  CardClass('Card 1', 'Random Stuff about Card 1'),
                  CardClass('Card 2', 'Random Stuff about Card 2'),
                  CardClass('Card 3', 'Random Stuff about Card 3'),
                  CardClass('Card 4', 'Random Stuff about Card 4'),
                  CardClass('Card 5', 'Random Stuff about Card 5'),
                  CardClass('Card 6', 'Random Stuff about Card 6'),
                  CardClass('Card 7', 'Random Stuff about Card 7'),
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        RowCard('Source 1', '4.8', 'Fact Checking' , '', 0),
                        RowCard('Source 2', '4.5', 'News Outlet', '', -5),
                        RowCard('Source 3', '4.2', 'News Outlet', '', -4),
                        RowCard('Source 4', '4.0', 'Fact Checking', '', 2),
                        RowCard('Source 5', '3.5', 'News Outlet', '', 5),
                      ],
                    ),
                  ),
                  TextFunction('+_+'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
