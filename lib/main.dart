// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_app/card_image.dart';
import 'package:my_app/gradient_back.dart';
import 'package:my_app/header_appbar.dart';
import 'package:my_app/review_list.dart';
import "description_place.dart";
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  String description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body:Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Bahamas",4,description),
                ReviewList(),
              ],
            ),
            HeaderAppBar()
          ],
        ) 
        //SingleChildScrollView( scrollDirection: Axis.vertical, child: DescriptionPlace("Bahamas",4,description),) 
      ),
    );
  }
}

