import 'package:flutter/material.dart';
import "review.dart";

class ReviewList extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Felipe Vargas", "3 review - 5 photos", "Que bonito es todo esto"),
        Review("assets/img/people.jpg", "Felipe Vargas", "3 review - 5 photos", "Que bonito es todo esto"),
        Review("assets/img/people.jpg", "Felipe Vargas", "3 review - 5 photos", "Que bonito es todo esto"),
        Review("assets/img/people.jpg", "Felipe Vargas", "3 review - 5 photos", "Que bonito es todo esto"),
      ],
    );
  }


}