// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import "package:english_words/english_words.dart";
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
              title: Row(
            children: const <Widget>[
              Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 26,
                semanticLabel: "Atras",
              ),
              SizedBox(width: 10),
              Text(
                "Share",
                textAlign: TextAlign.center,
              )
            ],
          )),
          body: Stack(
            alignment: AlignmentDirectional.center,
            children: const <Widget>[
              Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Text("Hola", textAlign: TextAlign.center,),
            ],
          )
),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
