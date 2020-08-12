import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/customIcons.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter_story_app_concept/detail_page.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _HomePageState extends State<HomePage> {
  var currentPage = data.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: data.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Scaffold(
      drawer: Drawer(
          child: Container(
            color: Hexcolor("#F2F2F2"),
            padding: EdgeInsets.only(left: 10,bottom: 30),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("assets/Menu_lofo.png"),
                    SizedBox(width: 5,),
                    Image.asset("assets/Coffeeholic.png"),
                  ],
                ),
                Divider(color: Colors.grey,),
                GestureDetector(onTap: (){
                  Navigator.of(context).pushNamed('coffee_story');
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/icon_book.png"),
                      SizedBox(width: 5,),
                      Text("Câu chuyện cà phê",
                          style: TextStyle(
                            color: ColorApp.colorBrown,
                            fontSize: 20.0,
                            fontFamily: "Calibre-Semibold",
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/icon_drink.png"),
                      SizedBox(width: 5,),
                      Text("Thường thức cà phê",
                          style: TextStyle(
                            color: ColorApp.colorBrown,
                            fontSize: 20.0,
                            fontFamily: "Calibre-Semibold",
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(onTap: (){
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/icon_shop.png"),
                      SizedBox(width: 5,),
                      Text("Đề xuất quán",
                          style: TextStyle(
                            color: ColorApp.colorBrown,
                            fontSize: 20.0,
                            fontFamily: "Calibre-Semibold",
                          )),
                    ],
                  ),
                ),
                Divider(color: Colors.grey,),
                GestureDetector(onTap: (){
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/icon_post.png"),
                      SizedBox(width: 5,),
                      Text("Đăng bài (Admin)",
                          style: TextStyle(
                            color: ColorApp.colorBrown,
                            fontSize: 20.0,
                            fontFamily: "Calibre-Semibold",
                          )),
                    ],
                  ),
                ),
                Divider(color: Colors.grey,),
                GestureDetector(onTap: (){

                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/icon_gear.png"),
                      SizedBox(width: 5,),
                      Text("Cài đặt",
                          style: TextStyle(
                            color: ColorApp.colorBrown,
                            fontSize: 20.0,
                            fontFamily: "Calibre-Semibold",
                          )),
                    ],
                  ),
                ),
                Divider(color:Colors.grey),
                GestureDetector(onTap: (){

                },
                  child: Text("Hỗ trợ & Phản hồi",
                      style: TextStyle(
                        color: ColorApp.colorBrown,
                        fontSize: 20.0,
                        fontFamily: "Calibre-Semibold",
                      )),
                ),
                SizedBox(height: 15),
                GestureDetector(onTap: (){

                },
                  child: Text("Thông tin về Coffeeholic",
                      style: TextStyle(
                        color: ColorApp.colorBrown,
                        fontSize: 20.0,
                        fontFamily: "Calibre-Semibold",
                      )),
                ),
              ],
            ),
          )),
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
            builder: (context) => IconButton(
              padding: EdgeInsets.only(left: 12),
              icon: Icon(
                CustomIcons.menu,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
//                    IconButton(
//                      icon: Icon(
//                        CustomIcons.menu,
//                        color: Colors.white,
//                        size: 30.0,
//                      ),
//                      onPressed: () {
//                       Scaffold.of(context).openDrawer();
//                      },
//                    ),
//                    IconButton(
//                      icon: Icon(
//                        Icons.search,
//                        color: Colors.white,
//                        size: 30.0,
//                      ),
//                      onPressed: () {},
//                    )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Home of Coffeeholic",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 1.0,
                      )),
                  IconButton(
                    icon: Icon(
                      CustomIcons.option,
                      size: 12.0,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFff6e6e),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        child: Text("Top Views",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("Blog", style: TextStyle(color: Colors.blueAccent))
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 500,
                height: 500,
                padding: const EdgeInsets.only(left: 20),
                child: Swiper(
                    itemCount: data.length,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 55,
                    layout: SwiperLayout.STACK,
                    pagination: SwiperPagination(
                      builder:
                      DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, a, b) => DetailPage(
                                  data[index],
                                ),
                              ),
                            );
                          },
                          child: Stack(children: <Widget>[
//                        SizedBox(height: 10),
                            CardItem(data[index])
                          ]));
                    })),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Favourite",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 46.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 1.0,
                      )),
                  IconButton(
                    icon: Icon(
                      CustomIcons.option,
                      size: 12.0,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        child: Text("Latest",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("9+ Stories", style: TextStyle(color: Colors.blueAccent))
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset("assets/image_02.jpg",
                        width: 296.0, height: 222.0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < data.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(data[i].iconImage, fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(data[i].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontFamily: "SF-Pro-Text-Regular",
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 12.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text("Read more",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}

class CardItem extends StatelessWidget {
  CoffeeInfo coffeeInfo;
  CardItem(CoffeeInfo _coffee) : coffeeInfo = _coffee;
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 450,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0)
        ]),
        child: AspectRatio(
          aspectRatio: cardAspectRatio,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(coffeeInfo.iconImage, fit: BoxFit.cover),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(coffeeInfo.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontFamily: "SF-Pro-Text-Regular",
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Text("Read more",
                            style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
