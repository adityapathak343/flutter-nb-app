import 'package:flutter/material.dart';
import './buttonfile.dart';

class CardClass extends StatelessWidget {
  final String heading;
  final String content;

  @override
  CardClass(this.heading, this.content);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            width: double.infinity,
            child: Text(
              heading,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            width: double.infinity,
            child: Text(
              content,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ButtonThing('READ MORE', () {}),
        ],
      ),
    );
  }
}
