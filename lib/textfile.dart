import 'package:flutter/material.dart';

class TextFunction extends StatelessWidget {
  final String str;

  TextFunction(this.str);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      child: Text(
        str,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          letterSpacing: 5,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
