import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';


class CoffeeKnowledge{
  String imgUrl;
  String subtitle;
  CoffeeKnowledge(this.imgUrl, this.subtitle);
}
List<CoffeeKnowledge> coffeeKnowledgeData = [
  CoffeeKnowledge("assets/CS1.jpg","Capuchino"),
  CoffeeKnowledge("assets/image_15.jpg","Cà phê Sữa"),
  CoffeeKnowledge("assets/image_19.jpg","Cà phê Chồn"),
  CoffeeKnowledge("assets/image_24.jpg","Cà phê Rang"),
  CoffeeKnowledge("assets/image_31.jpg","Cà phê Đen"),
  CoffeeKnowledge("assets/image_37.jpg","Bạc Xỉu"),
  CoffeeKnowledge("assets/image_5.jpg","Cà phê Sữa Tươi"),
  CoffeeKnowledge("assets/CS1.jpg","Cà phê CaCao"),
  CoffeeKnowledge("assets/CS1.jpg","Cà phê Trứng"),
];


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
            margin: EdgeInsets.all(10.0),
            width: w*30,
            height: w*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
            child: Wrap(
                children:<Widget>[
                  Container(margin: EdgeInsets.fromLTRB(0, h*25, 0, 0), color: Colors.black,padding: EdgeInsets.fromLTRB(5, 5,0, 5),
                        child: Text('Ca phe sua',style: TextStyle(fontFamily: 'Dancing Script', color: Colors.white,fontSize: 22),)
                    ),

                ]
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            width: w*30,
            height: h*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[1].imgUrl),
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
            margin: EdgeInsets.all(10.0),
            width: w*30,
            height: h*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[2].imgUrl),
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
            margin: EdgeInsets.all(10.0),
            width: w*100/2,
            height: w*100/2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[3].imgUrl),
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
            margin: EdgeInsets.all(10.0),
            width: w*30,
            height: h*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[4].imgUrl),
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
            margin: EdgeInsets.all(10.0),
            width: w*30,
            height: h*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[5].imgUrl),
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
            margin: EdgeInsets.all(10.0),
            width: w*30,
            height: h*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[6].imgUrl),
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
        body: CoffeeKnowledgeList(),
      ),
    );
  }
}