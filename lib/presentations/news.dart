import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter_story_app_concept/detail_page.dart';
import 'package:flutter_story_app_concept/presentations/home_page.dart';

class NewFeed extends StatelessWidget{
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width/100;
    double h =  MediaQuery.of(context).size.height/100;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("Bảng tin",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
        backgroundColor: ColorApp.colorYellow,
      ),
      body:
      Container(width: w*100,height: h*data.length*12,
        child: ListView.separated(itemCount: data.length,separatorBuilder: (context,index){
         return Divider(color: ColorApp.colorBrown.withOpacity(0.5),thickness: 0.4);
        },itemBuilder: (context,index){
          final item = data[index];
          return PostDetail(item);
        },),
      ),
    );
  }
}
class PostDetail extends StatelessWidget{
  final CoffeeInfo post;
  PostDetail(CoffeeInfo coffeeInfo):post = coffeeInfo;
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h =  MediaQuery.of(context).size.height/100;
   return GestureDetector(onTap:(){
     Navigator.of(context).push(
         MaterialPageRoute(builder: (context) => DetailPage(post)));
   },
   child:
    Wrap(
       children:[ Row(mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisSize: MainAxisSize.max,
       children: [
         SizedBox(width: 5),
         Image.asset(post.images[0],width: 100,height: 85,fit: BoxFit.cover),
         SizedBox(width: 10),
         Expanded(
           child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
             Text(post.name,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600),),
             SizedBox(height: 5),
             Text(post.description.substring(0,100) + "...",style:TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 12,fontWeight: FontWeight.w400)),
           ]),
         ),
         SizedBox(width: 5)
     ],),]),
   );
  }
}