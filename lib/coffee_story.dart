import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter_story_app_concept/data/coffee_story.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class CoffeeStoryPage extends StatelessWidget{
  CoffeeStory coffeeStory;
  CoffeeStoryPage(CoffeeStory _coffeeStory):coffeeStory= _coffeeStory;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    return
        Material(
          child: Container(
//            width: w*100,height: h*100,
               decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(coffeeStory.imgUrl),fit: BoxFit.fitHeight)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
              children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w*3, h*1.5, w*3, h*1.5),margin: EdgeInsets.fromLTRB(w*40, h*70, w*2, h),
//                color: Colors.black.withOpacity(0.8),
                child: Text(coffeeStory.subtitle,style: TextStyle(fontSize: 22,color: Colors.white,fontFamily: 'Dancing Script')),
    ),
            ]),
          )),
        );

  }
}
class CoffeeStoryBoard extends StatefulWidget {
  CoffeeStoryBoardState createState() => CoffeeStoryBoardState();
}
Container _container(BuildContext context, CoffeeStory coffeeStory)
{
  double h = MediaQuery.of(context).size.height/100;
  double w = MediaQuery.of(context).size.width/100;
  return Container(
      decoration: BoxDecoration(image: DecorationImage(image:
      AssetImage(coffeeStory.imgUrl),fit: BoxFit.fitHeight)),
      child:
      BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
        child: Wrap(
            children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w*3, h*1.5, w*3, h*1.5),margin: EdgeInsets.fromLTRB(w*40, h*70, w*2, h),
//              color: Colors.black.withOpacity(0.8),
              child: Text(coffeeStory.subtitle,style: TextStyle(fontSize: 22,color: Colors.white,fontFamily: 'Dancing Script')),
            ),
            ]),
      ));
}
class CoffeeStoryBoardState extends State<CoffeeStoryBoard>{
  static List<CoffeeStory> db = coffeeStoryData;


  int page = 0;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    List<Container> pages = [
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[0].imgUrl),fit: BoxFit.fitHeight)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w, h*1.5, 0, h*1.5),margin: EdgeInsets.fromLTRB(w*42, h*12, w*8, h),
                  child: Text(db[0].subtitle,style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Dancing Script',fontWeight: FontWeight.bold,letterSpacing: 1.0)),
                ),
                ]),
          )),
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[1].imgUrl),fit: BoxFit.fill)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w*3, h*1, w, h*1.5),margin: EdgeInsets.fromLTRB(w, h*8, w*35, h),
                  child: Text(db[1].subtitle,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Dancing Script')),
                ),
                ]),
          )),
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[2].imgUrl),fit: BoxFit.fitHeight)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w*3, h*1, w, h/2),margin: EdgeInsets.fromLTRB(w*2, h*8, w*45, h),
                  color: Colors.white.withOpacity(0.65),
                  child: Text(db[2].subtitle,style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'Dancing Script')),
                ),
                ]),
          )),
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[3].imgUrl),fit: BoxFit.fill)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w, h*1.5, w*3, h*1.5),margin: EdgeInsets.fromLTRB(w*2, h*15, w*50, h),
                  child: Text(db[3].subtitle,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Dancing Script')),
                ),
                ]),
          )),
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[4].imgUrl),fit: BoxFit.fill)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w, h*1.5, w, h*1.5),margin: EdgeInsets.fromLTRB(w*5, h*15, w*45, h),
                  color: Colors.black.withOpacity(0.4),
                  child: Text(db[4].subtitle,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Dancing Script',letterSpacing: 1.0,fontWeight: FontWeight.w500)),
                ),
                ]),
          )),
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[5].imgUrl),fit: BoxFit.fill)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w, h*1.5, w*3, h*1.5),margin: EdgeInsets.fromLTRB(w*2, h*65, w*50, h),
                  child: Text(db[5].subtitle,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Dancing Script')),
                ),
                ]),
          )),
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[6].imgUrl),fit: BoxFit.fitHeight)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w*3, h*1.5, w*1, h*1.5),margin: EdgeInsets.fromLTRB(w*30, h*8, w*3, h),
                  color: Colors.black.withOpacity(0.6),
                  child: Text(db[6].subtitle,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Dancing Script')),
                ),
                ]),
          )),
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[7].imgUrl),fit: BoxFit.fill)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w*2, h, 0, h),margin: EdgeInsets.fromLTRB(w*3, h*8, w*40, h),
                  color: Colors.brown.withOpacity(0.5),
                  child: Text(db[7].subtitle,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Dancing Script',fontWeight: FontWeight.w400)),
                ),
                ]),
          )),
      Container(width: w*100,height: h*100,
          decoration: BoxDecoration(image: DecorationImage(image:
          AssetImage(db[8].imgUrl),fit: BoxFit.fill)),
          child:
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
            child: Wrap(
                children:<Widget>[ Container(padding: EdgeInsets.fromLTRB(w, h*1.5, 0, 0),margin: EdgeInsets.fromLTRB(w*35, h*68, w*5, h*5),
//                  color: Colors.black.withOpacity(0.8),
                  child: Text(db[8].subtitle,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Dancing Script')),
                ),
                ]),
          )),
    ];
   return Scaffold(
     body: Stack(
       children: <Widget>[
         LiquidSwipe(pages: pages,
           fullTransitionValue: 200,
           enableSlideIcon: true,
           enableLoop: false,
           positionSlideIcon: 0.5,
           onPageChangeCallback:  pageChangeCallback,
           currentUpdateTypeCallback: updateTypeCallback,
           waveType: WaveType.liquidReveal,
         )
       ],
     ),
   );
  }
  pageChangeCallback(int lpage) {
    print(lpage);
    setState(() {
      page = lpage;
    });
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }
}