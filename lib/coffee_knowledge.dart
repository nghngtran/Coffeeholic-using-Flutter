import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter_story_app_concept/data/coffee_knowledge.dart';
import 'package:flutter_story_app_concept/data/coffee_story.dart';
import 'package:liquid_swipe/liquid_swipe.dart';




class CoffeeKnowledgeList extends StatelessWidget{
  static List<CoffeeKnowledge> data = coffeeKnowledgeData;
  
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    return Material(
      child: GridView.count(crossAxisCount: 2,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5.0),
          width: w*30,
          height: h*30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            image: DecorationImage(
                image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                fit: BoxFit.cover
            ),
          ),
          child: Wrap(
           children:<Widget>[
             SizedBox(width: double.infinity,
                 child: Container(margin: EdgeInsets.fromLTRB(0, h*25, 0, 0), color: Colors.black,padding: EdgeInsets.fromLTRB(5, 5,0, 5),
                   child: Text('Ca phe sua',style: TextStyle(fontFamily: 'Dancing Script', color: Colors.white,fontSize: 22),)
             ),
             )
           ]
          ),
        ),
        Container(
          margin: EdgeInsets.all(5.0),
          width: w*30,
          height: h*30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            image: DecorationImage(
                image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                fit: BoxFit.cover
            ),
          ),
          child: Wrap(
              children:<Widget>[
                SizedBox(width: double.infinity,
                  child: Container(margin: EdgeInsets.fromLTRB(0, h*25, 0, 0), color: Colors.black,padding: EdgeInsets.fromLTRB(5, 5,0, 5),
                      child: Text('Ca phe sua',style: TextStyle(fontFamily: 'Dancing Script', color: Colors.white,fontSize: 22),)
                  ),
                )
              ]
          ),
        ),
        Container(
          margin: EdgeInsets.all(5.0),
          width: w*30,
          height: h*30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            image: DecorationImage(
                image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                fit: BoxFit.cover
            ),
          ),
          child: Wrap(
              children:<Widget>[
                SizedBox(width: double.infinity,
                  child: Container(margin: EdgeInsets.fromLTRB(0, h*25, 0, 0), color: Colors.black,padding: EdgeInsets.fromLTRB(5, 5,0, 5),
                      child: Text('Ca phe sua',style: TextStyle(fontFamily: 'Dancing Script', color: Colors.white,fontSize: 22),)
                  ),
                )
              ]
          ),
        ),Container(
          margin: EdgeInsets.all(5.0),
          width: w*30,
          height: h*30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            image: DecorationImage(
                image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                fit: BoxFit.cover
            ),
          ),
          child: Wrap(
              children:<Widget>[
                SizedBox(width: double.infinity,
                  child: Container(margin: EdgeInsets.fromLTRB(0, h*25, 0, 0), color: Colors.black,padding: EdgeInsets.fromLTRB(5, 5,0, 5),
                      child: Text('Ca phe sua',style: TextStyle(fontFamily: 'Dancing Script', color: Colors.white,fontSize: 22),)
                  ),
                )
              ]
          ),
        )
      ],
      ),
    );
  }
}




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
        body: CoffeeKnowledgeList(),
      ),
    );
  }
}