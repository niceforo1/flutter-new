import 'package:flutter/material.dart';
import 'package:trips_app/card_image_list.dart';
import 'package:trips_app/gradient_back.dart';
import 'header_appbar.dart';

class ProfileTrips extends StatelessWidget {
  static String pathImage = "assets/images/viajero.png";

  final userPhoto = Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 3),
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(pathImage))),
  );

   final description = Column(
    children: <Widget>[
      Container(
        child: Text("Gabino Santana",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontFamily: 'Lato', fontSize: 18),),
      ),
      Container(
        child: Text("gabino18@gmail.com",textAlign: TextAlign.center,style: TextStyle(color: Colors.white24, fontFamily: 'Lato', fontSize: 15),),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Stack(
        children: <Widget>[
          GradientBack("Profile"),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: Row(
              children: <Widget>[
                description,
                userPhoto,
              ],
            ),

          ),
        ],
      );
  }
}
