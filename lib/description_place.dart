import "package:flutter/material.dart";
import 'package:my_app/button_purple.dart';
import 'package:my_app/review_list.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace,this.stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {


    final star_border = Container(
      margin: EdgeInsets.only(
        top: 343,
        right: 3
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 343,
        right: 3
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 343,
        right: 3
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Text(
            descriptionPlace,
            style: TextStyle(fontFamily: "Lato", fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF56575a, )),
            textAlign: TextAlign.justify,
          ),
        );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 340, left: 20, right: 20),
          child: Text(
            namePlace,
            style: TextStyle(fontFamily: "Lato",fontSize: 30,fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
        )
      ],
    );


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }
}
