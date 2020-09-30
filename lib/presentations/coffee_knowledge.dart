import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/presentations/coffee_knowledge_detail.dart';
import 'package:flutter_story_app_concept/data/coffee_knowledge.dart';



class CoffeeKnowledgeList extends StatelessWidget {
  List<CoffeeKnowledge> data;
  CoffeeKnowledgeList(List<CoffeeKnowledge> _data): data=_data;
  List<Widget> getItemList(BuildContext context, double w, double h) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < data.length; i++) {
      list.add(new GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CoffeeKnowledgeDetailPage(data[i])));
        },
        child: Container(
          margin: EdgeInsets.all(10.0),
          width: w * 30,
          height: w * 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            image: DecorationImage(
              image: AssetImage(data[i].coverImg),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: h * 5,
                  width: w * 50,
                  color: Colors.black.withOpacity(0.5),
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                  child: Center(
                    child: Text(data[i].title,
                        style: TextStyle(
                            fontFamily: 'Dancing Script',
                            color: Colors.white,
                            letterSpacing: 1.2,
                            fontSize: 24)),
                  )),
            ),
          ]),
        ),
      ),);
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height / 100;
    double w = MediaQuery
        .of(context)
        .size
        .width / 100;
    return Material(
        child: GridView.count(
            crossAxisCount: 2,
            children: getItemList(context, w, h)
        )
    );
  }
}



class CoffeeKnowledgePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Thường thức cà phê", style: TextStyle(fontSize: 20,color: Colors.black)),
          backgroundColor: ColorApp.colorYellow,
          centerTitle: true,
          leading: new  IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: (){
            Navigator.of(context).pop();
          },),
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.search, color: Colors.black,size: 24),
              onPressed:() {},)
          ],
        ),
        body: CoffeeKnowledgeList(data),
      ),
    );
  }
}