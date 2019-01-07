import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(
          "assets/images/viajero.png",
          "Gabino Santana",
          "1 review - 5 photos",
          "There is an amazing place in Sri Lanka",
        ),
        Review(
          "assets/images/viajero.png",
          "Gabino Santana2",
          "1 review - 5 photos",
          "There is an amazing place in Sri Lanka2",
        )
      ],
    );
  }
}
