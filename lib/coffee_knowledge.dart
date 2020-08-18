import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter_story_app_concept/data/coffee_knowledge.dart';
import 'package:flutter_story_app_concept/data/coffee_story.dart';
import 'package:liquid_swipe/liquid_swipe.dart';


class CoffeeKnowledgeItem extends StatelessWidget{
  CoffeeKnowledge coffeeKnowledge;
  CoffeeKnowledgeItem(CoffeeKnowledge _coffeeKnowledge):coffeeKnowledge= _coffeeKnowledge;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    return Material(
      child: Container(
        decoration: BoxDecoration(image: DecorationImage(image:
        AssetImage(coffeeKnowledge.imgUrl),fit: BoxFit.fitHeight)),
        child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w*3, h*1.5, w*3, h*1.5),margin: EdgeInsets.fromLTRB(w*40, h*70, w*2, h),
                                  //                color: Colors.black.withOpacity(0.8),
                  child: Text(coffeeKnowledge.subtitle,style: TextStyle(fontSize: 22,color: Colors.white,fontFamily: 'Dancing Script')),
                ),
            ])
        )
      )
    );
  }
  
}

class CoffeeKnowledgeList extends StatelessWidget{
  static List<CoffeeKnowledge> data = coffeeKnowledgeData;

  List<Widget> getItem(){
      List<Widget> list = new List<Widget>();
      data.map((item) =>{list.add(new Text(item.subtitle))});
      return list;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child:Column(
          children:data.map((e) => Text(e.subtitle)).toList()
        ),
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