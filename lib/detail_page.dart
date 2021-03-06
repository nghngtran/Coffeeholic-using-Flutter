import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/data/favourite_post.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'data.dart';

List<CoffeeInfo> favoriteList = List<CoffeeInfo>();
Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
class DetailPage extends StatefulWidget {
  final CoffeeInfo coffeeInfo;
  DetailPage(CoffeeInfo _coffeeInfo) : coffeeInfo = _coffeeInfo;
  DetailPageState createState() => DetailPageState();
}
class DetailPageState extends State<DetailPage> {
  bool isSaved;
  FavoritePost favList = FavoritePost();
  void initState(){
    super.initState();
    setState(() {
      isSaved = false;
    });
  }
  @override
  Widget build(BuildContext context) {
//
//    return
//      ChangeNotifierProvider<FavoritePost>(
//            create: (context) => favList,
//        child: Consumer<FavoritePost>(
//        builder: (context, favListView, child) {
     return Scaffold(appBar: AppBar(backgroundColor: ColorApp.colorYellow,
       iconTheme: IconThemeData(color: Colors.black),),
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(margin: EdgeInsets.only(top:0),
                          height: 250,width: MediaQuery.of(context).size.width,child:Image.asset(widget.coffeeInfo.iconImage,fit: BoxFit.fitWidth),
                        ),
                    Padding(
                        padding:EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              widget.coffeeInfo.name,
                              style: TextStyle(
                                fontSize: 30,
                                color: primaryTextColor,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                      SizedBox(height: 10),
                      Wrap(
                        children:
                        [Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children:[
                                Expanded(flex: 8,
                                  child: Text(
                                  widget.coffeeInfo.position,
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 18,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.left,
                              ),
                                ),

                                Expanded(
                                  child: GestureDetector(onTap: (){
                                    setState(() {
                                      isSaved = !isSaved;
                                    });
                                    if(isSaved) {
                                      favoriteList.add(widget.coffeeInfo);
//                                      favList.addFavList(widget.coffeeInfo);
                                      favList.addFavList(widget.coffeeInfo);
                                    }
                                  },child: isSaved ? Icon(Icons.favorite,color: ColorApp.colorCoffee,size: 28)
                                  :Icon(Icons.favorite_border,color: ColorApp.colorCoffee,size: 28)),
                                )
                            ])]),
                            Divider(color: Colors.black38),
                            SizedBox(height: 32),
                            Text(
                              widget.coffeeInfo.description ?? '',
                              maxLines: 100,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                color: contentTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 32),
                            Divider(color: Colors.black38),
                          ],
                        ),
                      ),
//                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        'Thư viện ảnh',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 25,
                          color: const Color(0xff47455f),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.only(left: 32.0),
                      child: ListView.builder(
                          itemCount: widget.coffeeInfo.images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.asset(
                                    widget.coffeeInfo.images[index],
                                    fit: BoxFit.cover,
                                  )),
                            );
                          }),
                    ),
                  ],
                ),
              ),
//            Positioned(
//              child: Hero(
//                  tag: coffeeInfo.position,
//                  child:  Container(margin: EdgeInsets.only(top: 50),
//                        height: 280,width: MediaQuery.of(context).size.width,child:Image.asset(coffeeInfo.iconImage,fit: BoxFit.fitWidth),
//                      ),
//            )),
//            Positioned(
//              top: 60,
//              left: 32,
//              child: Text(
//                coffeeInfo.position.toString(),
//                style: TextStyle(
//                  fontFamily: 'Avenir',
//                  fontSize: 247,
//                  color: primaryTextColor.withOpacity(0.08),
//                  fontWeight: FontWeight.w900,
//                ),
//                textAlign: TextAlign.left,
//              ),
//            ),
//               IconButton(
//                  icon: Icon(Icons.arrow_back_ios),
//                  onPressed: () {
//                    Navigator.pop(context);
//                  },
//                ),
            ],
          ),
        ),
//      );}),
    );
  }
}
