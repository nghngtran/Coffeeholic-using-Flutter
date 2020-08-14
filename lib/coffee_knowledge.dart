import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter_story_app_concept/data/coffee_knowledge.dart';
import 'package:flutter_story_app_concept/data/coffee_story.dart';
import 'package:liquid_swipe/liquid_swipe.dart';





class CoffeeKnowledgePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Thường thức cà phê", style: TextStyle(fontFamily: 'Dancing Script',fontSize: 25,color: Colors.white)),
          backgroundColor: Colors.brown,
          leading: new  IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white), onPressed: (){},),
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.search, color: Colors.white),
              onPressed:() {},)
          ],
        ),
      ),
    );
  }

}