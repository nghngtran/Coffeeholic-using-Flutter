import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';

import 'package:flutter_story_app_concept/data/coffee_knowledge.dart';
import 'coffee_knowledge.dart';






class ListImage extends StatelessWidget{
  List<String>listImg;
  
  ListImage(@required List<String>contentImg):listImg=contentImg;

  List<Widget>getListImg(double w) {
    List<Widget> listWidget = new List<Widget>();
      for (var i = 0; i < listImg.length;i++)
        {
          listWidget.add(new Container(
            margin: EdgeInsets.all(5.0),
            width: w*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(listImg[i]),

                  fit: BoxFit.cover
              ),
            ),
          ),
          );
        }
      return listWidget;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    return Material(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: getListImg(w)
    ));
  }
}


class Content extends StatelessWidget{

  CoffeeKnowledge data;

  Content(@required CoffeeKnowledge _data): data = _data;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    return Material(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: h*40,
                  width: w*100,
                  child:  Image(

                    image: AssetImage(data.coverImg),

                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text(data.content,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 30,
                    style: TextStyle(fontSize: 17),)
                ),
                Container(
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    child: Text("Hình ảnh", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23))
                ),
                Flexible(
                  child:  SizedBox(
                      height: h*20,
                      child: ListImage(data.contentImg)

                  ),
                ),
              ],
            )
        )
    );
  }

}


class CoffeeKnowledgeDetailPage extends StatelessWidget{

  final CoffeeKnowledge data;
  CoffeeKnowledgeDetailPage(@required CoffeeKnowledge _data): data = _data;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(

            title: Text(data.title, style: TextStyle(fontSize: 20,color: Colors.black)),
            backgroundColor: ColorApp.colorYellow,

            leading: new  IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: (){Navigator.pop(context);},),
            actions: <Widget>[
              IconButton(
                icon:Icon(Icons.favorite, color: Colors.black),
                onPressed:() {},),
            ]
        ),

        body: Content(data),

      ),
    );
  }
}