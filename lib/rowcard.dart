import 'package:flutter/material.dart';

class RowCard extends StatelessWidget {
  final String name;
  final String rating;
  final String type;
  final String link;
  final int bias;

  RowCard(this.name, this.rating, this.type, this.link, this.bias);

  Widget build(BuildContext context) {
    int red = 0;
    int blue = 0;
    int green = 0;
    double opacity = 0;
    if (bias <= -5){
      blue = -bias;
      green = 0;
      red = 0;
      opacity = -bias/10;
    }
    else if ((bias > -5) & (bias < 0)){
      green = 10 + bias;
      opacity = (10+bias)/10;
    }
    else if ((bias >= 0) & (bias < 5)){
      green = 10 - bias;
      opacity = (10-bias)/10;
    }
    else{
      red = bias;
      opacity = bias/10;
    }
    return Container(
      width: 150,
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
      color: Color.fromRGBO(red*255, green*255, blue*255, opacity),
      child: Column(
        children: <Widget>[
          Icon(Icons.speaker_phone, color: Colors.white),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            rating + '/5.0',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Text(
            type,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          RaisedButton(
            color: Colors.white,
            child: Icon(Icons.link, color: Colors.black,),
            onPressed: () {print('pressed button');},
          )
        ],
      ),
    );
  }
}
