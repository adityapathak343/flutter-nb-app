import 'package:flutter/material.dart';

class ButtonThing extends StatelessWidget {
  final String mystr;
  final Function bchanger;

  ButtonThing(this.mystr, this.bchanger);

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(
          mystr,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
        color: Colors.black,
        onPressed: bchanger,
      ),
    );
  }
}
