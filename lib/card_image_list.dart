import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(
          25.0
        ),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/beach.jpg"),
          CardImage("assets/images/florencia.jpg"),
          CardImage("assets/images/forest.jpeg"),
          CardImage("assets/images/lake_mountain.jpg"),
          CardImage("assets/images/snow.jpeg")
        ],
      ),
    );
  }

}