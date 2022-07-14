import "package:flutter/material.dart";

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320, left: 20, right: 20),
          child: Text(
            "Duwili Ella",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),
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
    return title_stars;
  }
}
