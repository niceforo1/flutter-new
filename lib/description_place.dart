import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final star_border= Container(
      margin: EdgeInsets.only(
          top: 320.0,
          right: 3.0

      ),
      child: Icon(
          Icons.star_border,
          color:Color(0xFFf2c611)
      ),
    );


    final star_half = Container(
      margin: EdgeInsets.only(
          top: 320.0,
          right: 3.0

      ),
      child: Icon(
          Icons.star_half,
          color:Color(0xFFf2c611)
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0

      ),
      child: Icon(
        Icons.star,
        color:Color(0xFFf2c611)
      ),
    );

    final description_text = Container(
      margin: EdgeInsets.only(
        right: 20.0,
        left: 20.0,
        top: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
        /*softWrap: true,*/
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border,

          ],
        )
      ],
    );
    return Column(
      children: <Widget>[
        title_stars,
        description_text
      ],
    );
  }
}