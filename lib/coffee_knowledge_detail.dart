import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter_story_app_concept/data/coffee_knowledge.dart';
import 'package:flutter_story_app_concept/data/coffee_story.dart';
import 'package:liquid_swipe/liquid_swipe.dart';




class ListImage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    return Material(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            width: w*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: w*30,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: w*30,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: w*30,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: w*30,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
        ],
      ),
    );
  }

}


class Content extends StatelessWidget{
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
            new Container(
              height: h*20,
              width: w*100,
              child: new Image(
                image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                fit: BoxFit.fill,
              ),
            ),
            Container(
                margin: EdgeInsets.all(5.5),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed id semper risus in hendrerit gravida rutrum. Congue nisi vitae suscipit tellus. Ut faucibus pulvinar elementum integer enim neque. Venenatis cras sed felis eget velit aliquet. Odio ut sem nulla pharetra diam sit amet nisl. Lorem mollis aliquam ut porttitor leo a. Interdum consectetur libero id faucibus. Nec ullamcorper sit amet risus nullam eget felis eget. Vitae elementum curabitur vitae nunc sed velit. Aliquet nec ullamcorper sit amet risus nullam eget felis eget. Pulvinar sapien et ligula ullamcorper malesuada proin libero. Turpis egestas pretium aenean pharetra magna ac placerat. Consectetur libero id faucibus nisl. Bibendum ut tristique et egestas quis ipsum. Et malesuada fames ac turpis egestas integer eget aliquet. Id eu nisl nunc mi ipsum. Ornare lectus sit amet est placerat in egestas. Eget felis eget nunc lobortis mattis aliquam.In hendrerit gravida rutrum quisque non tellus. Tristique senectus et netus et malesuada fames ac turpis. Ac turpis egestas maecenas pharetra convallis posuere morbi leo urna. Lacus sed viverra tellus in hac. Sed turpis tincidunt id aliquet. Viverra vitae congue eu consequat ac felis donec. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Suspendisse ultrices gravida dictum fusce ut placerat orci. Mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Amet facilisis magna etiam tempor orci eu lobortis.",
                overflow: TextOverflow.ellipsis,
                maxLines: 30)
            ),
            Container(
                margin: EdgeInsets.all(5.5),
              child: Text("Hình ảnh", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Dancing Script', fontSize: 30))
            ),
            Flexible(
              child:  SizedBox(
                height: h*20,
                  child: ListImage()
              ),
          ),
        ],
      )
    )
    );
  }

}


class CoffeeKnowledgeDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Cà phê sữa", style: TextStyle(fontFamily: 'Dancing Script',fontSize: 25,color: Colors.black)),
          backgroundColor: Colors.white70,
          leading: new  IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: (){},),
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.favorite, color: Colors.black),
              onPressed:() {},),
          ]
        ),
        body: Content(),
      ),
    );
  }
}